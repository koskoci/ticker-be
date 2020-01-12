defmodule TickerWeb.QueryView do
  use TickerWeb, :view
  alias TickerWeb.QueryView

  def render("index.json", %{history: history}) do
    history
  end
end
