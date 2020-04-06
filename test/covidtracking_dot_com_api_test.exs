defmodule CovidtrackingDotComApiTest do
  use ExUnit.Case
  doctest CovidtrackingDotComApi

  test "greets the world" do
    assert CovidtrackingDotComApi.hello() == :world
  end
end
