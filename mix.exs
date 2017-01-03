defmodule Currexbot.Mixfile do
  use Mix.Project

  def project do
    [app: :currexbot,
     version: "0.2.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [
        :postgrex,
        :ecto,
        :logger,
        :httpoison,
        :nadia,
        :cowboy,
        :plug
      ],
      mod: {Currexbot, []}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.10"},
      {:nadia, github: "zhyu/nadia"},
      {:floki, "~> 0.10"},
      {:sweet_xml, "~> 0.6"},
      {:postgrex, "~> 0.13"},
      {:ecto, "~> 2.1.1"},
      {:linguist, "~> 0.1.5"},
      {:russian, "~> 0.1.0"},
      {:cowboy, "~> 1.0.4"},
      {:plug, "~> 1.2"},
      {:credo, "~> 0.5", only: [:dev, :test]}
    ]
  end
end
