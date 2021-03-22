defmodule AzureTextToSpeechExampleTest do
  use ExUnit.Case
  doctest AzureTextToSpeechExample

  test "greets the world" do
    assert AzureTextToSpeechExample.hello() == :world
  end
end
