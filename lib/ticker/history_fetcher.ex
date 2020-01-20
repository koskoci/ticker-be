defmodule Ticker.HistoryFetcher do
  alias Ticker.UrlBuilder

  def fetch(stocks) do
    stocks
    |> Enum.map(&Task.async(fn -> UrlBuilder.build(&1) |> history_provider().get_history() end))
    |> Enum.map(&Task.await/1)
  end

  defp history_provider do
    Application.get_env(:ticker, TickerWeb.Endpoint)[:history_provider]
  end
end
