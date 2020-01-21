defmodule Ticker.Cruncher do
  def crunch(stock, initialValue) do
    daily_price(stock["history"]) |> daily_worth(initialValue)
  end

  defp daily_price(data) do
    data
    |> Enum.sort_by(&elem(&1, 0))
    |> Enum.map(&to_date_and_price/1)
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
