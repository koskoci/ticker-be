defmodule TickerWeb.ErrorView do
  use TickerWeb, :view

  def render("400.json", _assigns) do
    %{errors: %{message: "Bad request"}}
  end

  def render("404.json", _assigns) do
    %{errors: %{message: "Not Found"}}
  end

  def render("500.json", _assigns) do
    %{errors: %{message: "Server Error"}}
  end
end
