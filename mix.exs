defmodule CovidtrackingDotComApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :covidtracking_dot_com_api,
      version: "0.1.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "Simple wrapper for covidtracking.com/api"
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/TheFirstAvenger/covidtracking_dot_com_api"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.21.3", only: :dev, runtime: false},
      {:jason, "~> 1.2"}
    ]
  end
end
