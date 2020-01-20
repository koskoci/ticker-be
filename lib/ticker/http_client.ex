defmodule Ticker.HttpClient do
  def get_history(url) do
    %HTTPoison.Response{status_code: 200, body: body} = HTTPoison.get!(url)
    body |> Jason.decode!()
  end
end
