defmodule HttpServer.Router do
  use Plug.Router
  plug :match     #to match routes
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hello World!")
  end

  match _, do:
    send_resp(conn, 404, "404 Page not found")
  end
