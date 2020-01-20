defmodule Ticker.HttpClient.Mock do
  alias TickerWeb.Support.ExpectedHttpClientResponse
  alias TickerWeb.Support.ExpectedApiRequest

  @goog_url ExpectedApiRequest.goog()
  @logm_url ExpectedApiRequest.logm()

  def get_history(@goog_url), do: ExpectedHttpClientResponse.goog()
  def get_history(@logm_url), do: ExpectedHttpClientResponse.logm()
end
