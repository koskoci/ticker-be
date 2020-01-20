defmodule TickerWeb.HistoryView do
  use TickerWeb, :view

  alias Ticker.Cruncher

  def render("stocks_history.json", %{stocks: stocks, request: request}) do
    %{
      history:
        render_many(stocks, TickerWeb.HistoryView, "stock_history.json",
          as: :stock,
          request: request
        )
    }
  end

  def render("stock_history.json", %{request: request, stock: stock}) do
    initialValue = getInitialValue(request, stock["name"])

    %{
      ticker: stock["name"],
      data: Cruncher.crunch(stock, initialValue)
    }
  end

  defp getInitialValue(request, name) do
    {:ok, initialValue} =
      Enum.find(request, fn %{"ticker" => ticker} -> ticker == name end)
      |> Map.fetch("initialValue")

    initialValue
  end
end
