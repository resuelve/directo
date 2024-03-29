defmodule Directo.MixProject do
  use Mix.Project

  def project do
    [
      app: :directo,
      version: "0.0.3",
      package: package(),
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:httpoison, "~> 1.6.2"},
      {:jason, "~> 1.1.2"},
      {:mock, "~> 0.3.3", only: :test},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      description: "Directo Elixir Client",
      maintainers: ["Oscar Olivera"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/resuelve/directo"}
    ]
  end
end
