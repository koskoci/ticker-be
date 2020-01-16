defmodule TickerWeb.QueryView do
  use TickerWeb, :view

  def render("index.json", %{history: history}) do
    history
  end
end
