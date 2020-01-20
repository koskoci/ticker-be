defmodule TickerWeb.HistoryController do
  use TickerWeb, :controller

  alias Ticker.History

  def show(conn, params) do
    history = History.show(params["stocks"])
    json(conn, history)
  end
end
