defmodule TickerWeb.QueryController do
  use TickerWeb, :controller

  alias Ticker.Chart
  alias Ticker.Chart.Query

  def index(conn, _params) do
    query = Chart.dummy()
    render(conn, "index.json", query: query)
  end
end
