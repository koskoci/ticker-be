defmodule TickerWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :ticker

  plug Corsica,
    origins: ["http://localhost:8000"],
    log: [rejected: :info, accepted: false],
    allow_headers: ["content-type"]

  socket "/socket", TickerWeb.UserSocket,
    websocket: true,
    longpoll: false

  plug Plug.Static,
    at: "/",
    from: :ticker,
    gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_ticker_key",
    signing_salt: "Lz6gP2p8"

  plug TickerWeb.Router
end
