defmodule PingPongElixirSocketsWeb.PingPongChannel do
  use Phoenix.Channel

  def join("ping-pong:lobby", _message, socket) do
    { :ok, socket } # or { :ok, reply, socket }
  end

  def handle_in("ping", _, socket) do
    # push(socket, "pong", %{})

    broadcast! socket, "pong", %{}

    { :noreply, socket }
  end

  # terminate/2

  # handle_in/3

  # handle_out/3
end