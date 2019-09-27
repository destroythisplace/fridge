defmodule Fridge.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  import Plug

  def start(type, args) do
    # start Plug hook

    children = [
      # Starts a worker by calling: Fridge.Worker.start_link(arg)
      # Plug.Cowboy.child_spec(scheme: :http, plug: Fridge.Pipe, options: [port: 4001]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Fridge.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
