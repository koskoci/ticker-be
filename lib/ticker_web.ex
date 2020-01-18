defmodule TickerWeb do
  def controller do
    quote do
      use Phoenix.Controller, namespace: TickerWeb

      import Plug.Conn
      alias TickerWeb.Router.Helpers, as: Routes
    end
  end

  def view do
    quote do
      use Phoenix.View,
        root: "lib/ticker_web/templates",
        namespace: TickerWeb

      import Phoenix.Controller, only: [view_module: 1]

      alias TickerWeb.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
