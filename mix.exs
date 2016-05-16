defmodule Conv.Mixfile do
  use Mix.Project

  def project do
    [app: :conv,
     version: "0.0.1",
     elixir: "~> 1.3-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_aws, github: "CargoSense/ex_aws", ref: "1b35baec9d992555510a3abf7ffd134a8837e7d1"},
     {:erlcloud, github: "alertlogic/erlcloud", ref: "c7203fd9f52232e9cf1de45b95f80e05b99f3925"}]
  end
end
