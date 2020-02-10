defmodule CodeSignalTest do
  use ExUnit.Case
  doctest CodeSignal
  doctest Arcade.EdgeOfTheOcean
  doctest Arcade.TheJourneyBegins
  doctest InterviewPractice.Arrays

  test "Add is working" do
    assert Arcade.TheJourneyBegins.add(7, 5) == 12
  end
end
