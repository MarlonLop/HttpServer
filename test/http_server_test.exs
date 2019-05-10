defmodule HttpServerTest do
  use Plug.Test
  use ExUnit.Case
  doctest HttpServer

  alias HttpServer.Router, as: Router

  test "index response" do
    response = conn(:get, "/")
             |> Router.call([])
    assert response.status == 200
  end

  test "hello response" do
    response = conn(:get, "/hello")
             |> Router.call([])
    assert response.status == 200
  end

  test "404 response" do
    response = conn(:get, "/notHere")
             |> Router.call([])
    assert response.status == 404
  end

  # test "returns world" do
  #   assert HttpServer.Router.hello() == :world
  # end
end
