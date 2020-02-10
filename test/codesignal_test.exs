defmodule CodeSignalTest do
  use ExUnit.Case
  doctest CodeSignal
  doctest CodeSignal.EdgeOfTheOcean
  doctest CodeSignal.TheJourneyBegins

  test "Add is working" do
    assert CodeSignal.TheJourneyBegins.add(7, 5) == 12
  end
end
