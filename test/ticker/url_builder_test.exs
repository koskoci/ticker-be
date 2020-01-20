defmodule Ticker.UrlBuilderTest do
  use ExUnit.Case

  alias TickerWeb.Support.ExpectedApiRequest
  alias Ticker.UrlBuilder

  describe "#build" do
    test "builds the url for the stock" do
      stock = %{"ticker" => "LOGM", "startDate" => "2020-01-01", "initialValue" => 70}
      logm_url = ExpectedApiRequest.logm()

      assert UrlBuilder.build(stock) == logm_url
    end
  end
end
