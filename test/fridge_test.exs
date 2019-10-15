defmodule FridgeTest do
  use ExUnit.Case
  doctest Fridge

  test "greets the world" do
    assert Fridge.hello() == :world
  end

  # Primitive Universe

  test "Graph is available." do
    assert Graph.new()
  end

  test "Register is available." do
    assert Process.whereis(Fridge.Register)
  end
  
end
