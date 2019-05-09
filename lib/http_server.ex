defmodule HttpServer do
  use Application
  require Logger

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, HttpServer.Router, [], port: 8080)
    ]

    Logger.info "Server online at http://localhost:8080/"
    Supervisor.start_link(children, strategy: :one_for_one)
  end

end
