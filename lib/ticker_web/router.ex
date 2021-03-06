defmodule TickerWeb.Router do
  use TickerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TickerWeb do
    pipe_through :api

    post "/", HistoryController, :show
  end
end
