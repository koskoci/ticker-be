defmodule Ticker.Services.UrlBuilder do
  def build(stock) do
    api_key = System.get_env("WTD_API_KEY")
    if is_nil(api_key) do
      raise "Env var WTD_API_KEY not found"
    end

    resource = "https://api.worldtradingdata.com/api/v1/history"
    query = """
            ?symbol=#{stock["ticker"]}&sort=newest&api_token=#{api_key}&date_from=#{stock["startDate"]}
            """

    resource <> query |> String.trim
  end
end
