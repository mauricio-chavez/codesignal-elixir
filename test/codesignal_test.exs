defmodule CodeSignalTest do
  use ExUnit.Case
  doctest CodeSignal

  test "Add is working" do
    assert CodeSignal.add(7, 5) == 12
  end
end
