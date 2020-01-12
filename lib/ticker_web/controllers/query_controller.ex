defmodule TickerWeb.QueryController do
  use TickerWeb, :controller

  alias Ticker.Chart

  def get_history(conn, params) do
    history = Chart.get_history(params)
    IO.inspect history

    render(conn, "index.json", history: history)
  end
end
