defmodule Ticker.HistoryTest do
  use ExUnit.Case, async: false

  import Mock

  alias TickerWeb.Support.ExpectedHttpClientResponse
  alias TickerWeb.Support.ExpectedApiRequest
  alias TickerWeb.Support.ExpectedHistory
  alias Ticker.HttpClient
  alias Ticker.History

  describe "#get_history" do
    test "returns the history" do
      stocks = [
        %{"ticker" => "LOGM", "startDate" => "2020-01-01", "initialValue" => 70},
        %{"ticker" => "GOOG", "startDate" => "2020-01-01", "initialValue" => 30}
      ]

      goog_url = ExpectedApiRequest.goog()
      logm_url = ExpectedApiRequest.logm()

      get_mock = fn
        ^goog_url ->
          ExpectedHttpClientResponse.goog()

        ^logm_url ->
          ExpectedHttpClientResponse.logm()
      end

      with_mock HttpClient, get_history: get_mock do
        assert History.show(stocks) == ExpectedHistory.history()
      end
    end
  end
end
