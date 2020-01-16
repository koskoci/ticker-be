defmodule Ticker.Services.UrlBuilder do
  def build(stock) do
    api_key = Application.get_env(:ticker, TickerWeb.Endpoint)[:api_key]
    resource = "https://api.worldtradingdata.com/api/v1/history"
    query = """
            ?symbol=#{stock["ticker"]}&sort=newest&api_token=#{api_key}&date_from=#{stock["startDate"]}
            """

    resource <> query |> String.trim
  end
end
