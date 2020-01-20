defmodule TickerWeb.HistoryController do
  use TickerWeb, :controller

  alias Ticker.HistoryFetcher

  def show(conn, params) do
    request = params["stocks"]
    stocks = HistoryFetcher.fetch(request)

    render(conn, "stocks_history.json", stocks: stocks, request: request)
  end
end
