defmodule Ticker.Services.Fetcher do
  alias Ticker.Services.UrlBuilder

  def fetch_stock_history(stock) do
    url = UrlBuilder.build(stock)

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body |> Jason.decode!()

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        %{message: "Not found :("}

      {:error, %HTTPoison.Error{reason: reason}} ->
        %{message: "HTTPoison Error"}
    end
  end
end
