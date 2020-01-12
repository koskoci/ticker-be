defmodule Ticker.Services.Fetcher do
  alias Ticker.Services.UrlBuilder

  def fetch(stock) do
    url = UrlBuilder.build(stock)

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.puts "HTTPoison error"
        IO.inspect reason
    end
  end
end
