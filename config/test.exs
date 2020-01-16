use Mix.Config

config :ticker, TickerWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn
