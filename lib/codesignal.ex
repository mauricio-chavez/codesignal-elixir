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
  Given an array of integers, find the pair of adjacent elements that has the
  largest product and return that product.

  ## Examples

      iex> CodeSignal.adjacent_elements_product [3, 6, -2, -5, 7, 3]
      21

  """
  def adjacent_elements_product([_head | tail] = input_array) do
    input_array
    |> Enum.zip(tail)
    |> Enum.map(fn {first, second} -> first * second end)
    |> Enum.max
  end
end
