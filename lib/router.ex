
defmodule HttpServer.Router do
  @moduledoc """
  This module handle all routin for the Server
  when sending a curl command there is no need to add '.html' extension
  example curl localhost:8080/hello
  """
  require Logger
  use Plug.Router
  plug :match     #to match routes
  plug :dispatch  #receive
  plug Plug.Static, at: "/home", from: {:http_server, "priv/static"}

  # function to root index.html
  get "/" do
      conn
      |> put_resp_header("content-type", "text/html; charset=utf-8")
      |> send_file(:ok, "priv/static/index.html")
    end

    # default function to handle any route that is not root '/'
    get "/:match_page" do
      cond do
          File.exists?("priv/static/#{match_page}.html") ->
            conn
            #|> Plug.Conn.register_before_send(Logger.info("Sent a #{conn.status} response"))
            |> put_resp_header("content-type", "text/html; charset=utf-8")
            |> send_file(:ok, "priv/static/#{match_page}.html")

          true ->
            conn
            |> put_resp_header("content-type", "text/html; charset=utf-8")
            |> send_file(:ok, "priv/static/404.html")

      end

      end
end
#Logger.info "HTTP/1.1 200 OK"
#send_resp(conn, 200, "HTTP/1.1 200 OK")

  # match _, do:
  #   send_resp(conn, 404, "404 Page not found")
  # end

# GET hello HTTP/1.1
# host: localhost
