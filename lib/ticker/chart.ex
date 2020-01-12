defmodule Ticker.Chart do
  alias Ticker.Services.Fetcher

  def get_history(params) do
    data = params["stocks"]
    |> List.first
    |> Fetcher.fetch

    %{data: data}
  end
end
