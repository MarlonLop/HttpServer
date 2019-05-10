# HttpServer

Elixir Http server for static html files.
It uses Plug and Cowboy packages

Start the server with the following command:
```
mix run --no-halt
```

Run the test with:
```
mix test test/http_server_test.exs
```
Html files are saved in the priv/static directory

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `http_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:http_server, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/http_server](https://hexdocs.pm/http_server).
