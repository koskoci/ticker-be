defmodule TickerWeb.QueryView do
  use TickerWeb, :view
  alias TickerWeb.QueryView

  def render("index.json", %{query: query}) do
    query
  end
end
