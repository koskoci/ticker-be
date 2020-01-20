defmodule Ticker.HttpClientTest do
  use ExUnit.Case, async: false

  import Mock

  alias TickerWeb.Support.ApiResponseFixture
  alias TickerWeb.Support.ExpectedHttpClientResponse
  alias TickerWeb.Support.ExpectedApiRequest
  alias Ticker.HttpClient

  describe "#get_history" do
    test "returns the history" do
      goog_url = ExpectedApiRequest.goog()
      logm_url = ExpectedApiRequest.logm()

      get_mock = fn
        ^goog_url ->
          %HTTPoison.Response{
            body: ApiResponseFixture.goog(),
            status_code: 200
          }

        ^logm_url ->
          %HTTPoison.Response{
            body: ApiResponseFixture.logm(),
            status_code: 200
          }
      end

      goog_response =
        Mock.with_mock HTTPoison, get!: get_mock do
          HttpClient.get_history(goog_url)
        end

      logm_response =
        Mock.with_mock HTTPoison, get!: get_mock do
          HttpClient.get_history(logm_url)
        end

      assert {goog_response, logm_response} ==
               {ExpectedHttpClientResponse.goog(), ExpectedHttpClientResponse.logm()}
    end
  end
end
