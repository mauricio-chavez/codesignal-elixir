defmodule Arcade.EdgeOfTheOcean do
  @moduledoc """
  Arcade - Edge of the Ocean chapter's solutions with Elixir.
  """

  @doc """
  Given an array of integers, find the pair of adjacent elements that has the
  largest product and return that product.

  ## Examples

      iex> Arcade.EdgeOfTheOcean.adjacent_elements_product [3, 6, -2, -5, 7, 3]
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

      iex> Arcade.EdgeOfTheOcean.shape_area 1
      1

      iex> Arcade.EdgeOfTheOcean.shape_area 2
      5

      iex> Arcade.EdgeOfTheOcean.shape_area 3
      13

  """
  def shape_area(n) do
    case n do
      1 -> 1
      n -> n * n + (n - 1) * (n - 1)
    end
  end

  @doc """
  Ratiorg got statues of different sizes as a present from CodeMaster for his
  birthday, each statue having an non-negative integer size. Since he likes
  to make things perfect, he wants to arrange them from smallest to largest so
  that each statue will be bigger than the previous one exactly by 1. He may
  need some additional statues to be able to accomplish that. Help him figure
  out the minimum number of additional statues needed.

  ## Examples

      iex> Arcade.EdgeOfTheOcean.make_array_consecutive_2 [6, 2, 3, 8]
      3

  """
  def make_array_consecutive_2(statues) do
    Enum.max(statues) - Enum.min(statues) - length(statues) + 1
  end
end
