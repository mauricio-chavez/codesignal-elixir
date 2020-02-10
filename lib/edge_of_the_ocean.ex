defmodule CodeSignal.EdgeOfTheOcean do
  @moduledoc """
  Edge of the Ocean chapter's solutions with Elixir.
  """

  @doc """
  Given an array of integers, find the pair of adjacent elements that has the
  largest product and return that product.

  ## Examples

      iex> CodeSignal.EdgeOfTheOcean.adjacent_elements_product [3, 6, -2, -5, 7, 3]
      21

  """
  def adjacent_elements_product([_head | tail] = input_array) do
    input_array
    |> Enum.zip(tail)
    |> Enum.map(fn {first, second} -> first * second end)
    |> Enum.max()
  end

  @doc """
  Find the areas of a polygon for a given n.
  See this [link](https://app.codesignal.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ)

  ## Examples

      iex> CodeSignal.EdgeOfTheOcean.shape_area 1
      1

      iex> CodeSignal.EdgeOfTheOcean.shape_area 2
      5

      iex> CodeSignal.EdgeOfTheOcean.shape_area 3
      13

  """
  def shape_area(n) do
    case n do
      1 -> 1
      n -> n * n + (n - 1) * (n - 1)
    end
  end
end
