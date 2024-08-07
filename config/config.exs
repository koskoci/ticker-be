import Config

config :ticker, TickerWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: TickerWeb.ErrorView, accepts: ~w(json)],
  secret_key_base: "SECRET"

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
