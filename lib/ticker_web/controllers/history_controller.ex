defmodule TickerWeb.HistoryController do
  use TickerWeb, :controller

  alias Ticker.History

  def show(conn, params) do
    history = History.show(params)
    json(conn, history)
  end
end
