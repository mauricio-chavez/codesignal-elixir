defmodule CodeSignal do
  @moduledoc """
  [CodeSignal](https://codesignal.com/) solutions for Elixir.
  """

  @doc """
  returns the sum of two numbers.

  ## Examples

      iex> CodeSignal.add(2, 3)
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

      iex> CodeSignal.century_from_year(1)
      1

      iex> CodeSignal.century_from_year(101)
      2

      iex> CodeSignal.century_from_year(200)
      2

  """
  def century_from_year(year) do
    div(year + 99, 100)
  end

  @doc """
  Given the string, check if it is a palindrome.

  ## Examples

      iex> CodeSignal.check_palindrome?("aabaa")
      true

      iex> CodeSignal.check_palindrome?("abac")
      false

  """
  def check_palindrome?(input_string) do
    String.reverse(input_string) == input_string
  end

  @doc """
  Given the string, check if it is a palindrome (with recursion).

  ## Examples

      iex> CodeSignal.check_palindrome_recursive?("aabaa")
      true

      iex> CodeSignal.check_palindrome_recursive?("abac")
      false

  """
  def check_palindrome_recursive?(input_string) do
    list = String.to_charlist(input_string)

    cond do
      String.length(input_string) == 0 ->
        true

      true ->
        Enum.at(list, 0) == Enum.at(list, -1) &&
          check_palindrome_recursive?(List.to_string(Enum.drop(Enum.drop(list, -1), 1)))
    end
  end
end
