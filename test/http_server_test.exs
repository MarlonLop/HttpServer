defmodule HttpServerTest do
  use Plug.Test
  use ExUnit.Case
  doctest HttpServer


  




  # alias Example.Router
  #
  # @content "<html><body>Hi!</body></html>"
  # @mimetype "text/html"
  #
  # @opts HttpServer.start(_type, _args)
  #
  # test "greets the world" do
  #   assert HttpServer.start() == "Server online at http://localhost:8080/"
  # end
  #
  # test "root OK" do
  #   conn = conn(:get, "/f")
  #   pushes = Plug.Test.sent_pushes(conn)
  #   assert HttpServer.Router.get{"priv/static/index.html", [{"accept", "text/html"}]} in pushes
  # end
  #
  # test "returns welcome" do
  #   conn =
  #     :get
  #     |> conn("/", "")
  #     |> Router.call(@opts)
  #
  #   assert conn.state == :sent
  #   assert conn.status == 200
  # end

end
