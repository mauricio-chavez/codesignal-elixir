defmodule Arcade.TheJourneyBegins do
  @moduledoc """
  Arcade - The Journey Begins chapter's solutions with Elixir.
  """

  @doc """
  Returns the sum of two numbers.

  ## Examples

      iex> Arcade.TheJourneyBegins.add(2, 3)
      5

  """
  def add(first, second) do
    first + second
  end

  @doc """
  Given a year, return the century it is in. The first century spans from the
  year 1 up to and including the year 100, the second - from the year 101 up
  to and including the year 200, etc.

  ## Examples

      iex> Arcade.TheJourneyBegins.century_from_year(1)
      1

      iex> Arcade.TheJourneyBegins.century_from_year(101)
      2

      iex> Arcade.TheJourneyBegins.century_from_year(200)
      2

  """
  def century_from_year(year) do
    div(year + 99, 100)
  end

  @doc """
  Given the string, check if it is a palindrome.

  ## Examples

      iex> Arcade.TheJourneyBegins.check_palindrome? "aabaa"
      true

      iex> Arcade.TheJourneyBegins.check_palindrome? "abac"
      false

      iex> Arcade.TheJourneyBegins.check_palindrome? "a"
      true

  """
  def check_palindrome?(input_string) do
    String.reverse(input_string) == input_string
  end
end
