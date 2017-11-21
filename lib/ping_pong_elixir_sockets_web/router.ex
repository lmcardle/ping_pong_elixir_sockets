defmodule PingPongElixirSocketsWeb.Router do
  use PingPongElixirSocketsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PingPongElixirSocketsWeb do
    pipe_through :api
  end
end
