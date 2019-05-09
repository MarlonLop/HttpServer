defmodule HttpServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :http_server,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :plug, :cowboy],
      mod: {HttpServer, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      #package to handle routes
      {:plug, "~> 1.8"},
      #package for
      {:plug_cowboy, "~> 1.0"},
      #{:cowboy, "~> 2.6"}
    ]
  end
end
