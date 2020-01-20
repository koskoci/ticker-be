defmodule Ticker.History do
  alias Ticker.UrlBuilder
  alias Ticker.HttpClient

  def show(stocks) do
    stocks_history =
      stocks
      |> Enum.map(&Task.async(fn -> UrlBuilder.build(&1) |> HttpClient.get_history() end))
      |> Enum.map(&Task.await/1)

    result = %{
      history:
        stocks_history
        |> Enum.map(fn stock -> transform_stock(stock, getInitialValue(stocks, stock["name"])) end)
    }

    result

    # stocks
    # |> Enum.map(&Task.async(fn -> UrlBuilder.build(&1) |> HttpClient.get_history() end))
    # |> Enum.map(&Task.await/1)
  end

  defp getInitialValue(stocks, name) do
    {:ok, initialValue} =
      Enum.find(stocks, fn %{"ticker" => ticker} -> ticker == name end)
      |> Map.fetch("initialValue")

    initialValue
  end

  defp transform_stock(stock, initialValue) do
    %{
      ticker: stock["name"],
      data: daily_price(stock["history"]) |> daily_worth(initialValue)
    }
  end

  defp daily_price(data) do
    data
    |> Enum.to_list()
    |> Enum.sort_by(&elem(&1, 0))
    |> Enum.map(&to_date_and_price/1)
    |> Enum.into([])
  end

  defp daily_worth(daily_price, initialValue) do
    baseline = daily_price |> List.first() |> List.first()
    factor = initialValue / baseline

    daily_price
    |> Enum.map(fn [price, date] -> [price * factor, date] end)
  end

  defp to_date_and_price({date, price_data}) do
    [opening_price(price_data), date]
  end

  defp opening_price(price_data) do
    {price, _} = price_data["open"] |> Float.parse()
    price
  end
end
