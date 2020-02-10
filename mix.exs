defmodule CodeSignal.MixProject do
  use Mix.Project

  def project do
    [
      app: :codesignal,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "CodeSignal",
      source_url: "https://github.com/mauricio-chavez/codesignal_elixir",
      homepage_url: "https://mauricio-chavez.github.io/codesignal_elixir",
      docs: [
        main: "CodeSignal",
        logo: "img/codesignal-logo.jpg",
        extras: ["README.md"]
      ]
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
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
