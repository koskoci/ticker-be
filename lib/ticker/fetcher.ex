defmodule Ticker.Fetcher do
  alias Ticker.UrlBuilder
  alias Ticker.HttpClient

  def fetch_stock_history(stock) do
    UrlBuilder.build(stock) |> HttpClient.get_history()
  end
end
