use Mix.Config

api_key = System.get_env("WTD_API_KEY")

if (is_nil(api_key) || api_key == "") do
  raise """
  Environment variable WTD_API_KEY is missing.
  To get an api key, create an account on World Trading Data:
  https://www.worldtradingdata.com/register
  """
end

config :ticker, TickerWeb.Endpoint,
  http: [port: 4000],
  debug_errors: false,
  code_reloader: true,
  check_origin: false,
  watchers: [],
  api_key: api_key

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
