defmodule TickerWeb.HistoryController do
  use TickerWeb, :controller

  alias Ticker.HistoryFetcher
  alias Ticker.Cruncher

  def show(conn, params) do
    request = params["stocks"]
    history = %{history: HistoryFetcher.fetch(request) |> Cruncher.crunch(request)}

    json(conn, history)
  end
end
