defmodule AzureTextToSpeechExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :azure_text_to_speech_example,
      version: "0.1.0",
      elixir: "~> 1.11",
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:azure_text_to_speech, github: "TORIFUKUKaiou/azure_text_to_speech"}
    ]
  end
end
