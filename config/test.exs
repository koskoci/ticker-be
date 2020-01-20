use Mix.Config

config :ticker, TickerWeb.Endpoint,
  http: [port: 4002],
  server: false,
  api_key: "TEST_KEY",
  history_provider: Ticker.HttpClient.Mock

config :logger, level: :warn
