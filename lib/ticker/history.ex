defmodule Ticker.History do
  alias Ticker.UrlBuilder
  alias Ticker.HttpClient

  def show(stocks) do
    data =
      stocks
      |> Enum.map(&Task.async(fn -> UrlBuilder.build(&1) |> HttpClient.get_history() end))
      |> Enum.map(&Task.await/1)

    result = %{
      history: data |> Enum.map(fn x -> transform_stock(x, stocks) end)
    }

    result
  end

  defp transform_stock(stock_response, stocks_request) do
    ticker = stock_response["name"]

    {:ok, initialValue} =
      Enum.find(stocks_request, fn %{"ticker" => name} -> name == ticker end)
      |> Map.fetch("initialValue")

    %{
      ticker: ticker,
      data: daily_prices(stock_response["history"]) |> daily_values(initialValue)
    }
  end

  defp daily_values(daily_prices, initialValue) do
    baseline = daily_prices |> List.first() |> List.first()
    factor = initialValue / baseline

    daily_prices
    |> Enum.map(fn [price, date] -> [price * factor, date] end)
  end

  defp daily_prices(data) do
    data
    |> Enum.to_list()
    |> Enum.sort_by(&elem(&1, 0))
    |> Enum.map(&to_date_and_price/1)
    |> Enum.into([])
  end

  defp opening_price(price_data) do
    {price, _} = price_data["open"] |> Float.parse()
    price
  end

  defp to_date_and_price({date, price_data}) do
    [opening_price(price_data), date]
  end
end
