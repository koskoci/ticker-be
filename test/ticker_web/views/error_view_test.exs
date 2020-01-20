defmodule TickerWeb.ErrorViewTest do
  use TickerWeb.ConnCase, async: true

  import Phoenix.View

  test "renders 400.json" do
    assert render(TickerWeb.ErrorView, "400.json", []) ==
             %{errors: %{message: "Bad request"}}
  end

  test "renders 404.json" do
    assert render(TickerWeb.ErrorView, "404.json", []) ==
             %{errors: %{message: "Not Found"}}
  end

  test "renders 500.json" do
    assert render(TickerWeb.ErrorView, "500.json", []) ==
             %{errors: %{message: "Server Error"}}
  end
end
