defmodule AzureTextToSpeechExample do
  @moduledoc """
  Documentation for `AzureTextToSpeechExample`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AzureTextToSpeechExample.hello()
      :world

  """
  def hello do
    :world
  end

  def run do
    locale = "ja-JP"
    voice_type = "Neural"

    voice =
      AzureTextToSpeech.voices_list()
      |> Enum.filter(fn %{"Locale" => l} -> l == locale end)
      |> Enum.filter(fn %{"VoiceType" => vt} -> vt == voice_type end)
      |> Enum.random()

    "Hello, world. おはようございます。こんにちは。私は元気です。元気があればなんでもできる。Azureは最高です。"
    |> AzureTextToSpeech.ssml(voice)
    |> AzureTextToSpeech.to_speech_of_neural_voice()
    |> (&File.write("output", &1)).()
  end
end
