defmodule Calculator.MixProject do
  use Mix.Project

  def project do
    [
      app: :calculator,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      main_module: Start
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
