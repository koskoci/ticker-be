defmodule Ticker.HistoryTest do
  use ExUnit.Case, async: false

  alias TickerWeb.Support.ExpectedHistory
  alias Ticker.History

  describe "#get_history" do
    test "returns the history" do
      stocks = [
        %{"ticker" => "LOGM", "startDate" => "2020-01-01", "initialValue" => 70},
        %{"ticker" => "GOOG", "startDate" => "2020-01-01", "initialValue" => 30}
      ]

      assert History.show(stocks) == ExpectedHistory.history()
    end
  end
end
