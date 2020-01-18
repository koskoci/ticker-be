use Mix.Config

config :ticker, TickerWeb.Endpoint,
  http: [port: 4002],
  server: false,
  api_key: "TEST_KEY"

config :logger, level: :warn
