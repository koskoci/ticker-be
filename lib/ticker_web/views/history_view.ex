defmodule TickerWeb.HistoryView do
  use TickerWeb, :view

  def render("show.json", %{history: history}) do
    history
  end
end
