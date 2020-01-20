defmodule Ticker.HistoryFetcherTest do
  use ExUnit.Case, async: false

  alias TickerWeb.Support.ExpectedHttpClientResponse
  alias Ticker.HistoryFetcher

  describe "#fetch" do
    test "returns the history" do
      stocks = [
        %{"ticker" => "LOGM", "startDate" => "2020-01-01", "initialValue" => 70},
        %{"ticker" => "GOOG", "startDate" => "2020-01-01", "initialValue" => 30}
      ]

      assert HistoryFetcher.fetch(stocks) == [
               ExpectedHttpClientResponse.logm(),
               ExpectedHttpClientResponse.goog()
             ]
    end
  end
end
