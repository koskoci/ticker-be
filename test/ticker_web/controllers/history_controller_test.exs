defmodule TickerWeb.HistoryControllerTest do
  use TickerWeb.ConnCase

  alias TickerWeb.Support.RequestFixture
  alias TickerWeb.Support.ExpectedResponse

  test "#show renders the stock history", %{conn: conn} do
    conn = post(conn, Routes.history_path(conn, :show), Jason.decode!(RequestFixture.json()))
    assert json_response(conn, 200) == Jason.decode!(ExpectedResponse.json())
  end
end
