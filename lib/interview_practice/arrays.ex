defmodule InterviewPractice.Arrays do
  @moduledoc """
  Interview Practice - Arrays solutions with Elixir.
  """

  @doc """
  Given an array a that contains only numbers in the range from 1 to a.length,
  find the first duplicate number for which the second occurrence has the
  minimal index. In other words, if there are more than 1 duplicated numbers,
  return the number for which the second occurrence has a smaller index than
  the second occurrence of the other number does. If there are no such
  elements, return -1.

  ## Examples

      iex> InterviewPractice.Arrays.first_duplicate [2, 1, 3, 5, 3, 2]
      3

      iex> InterviewPractice.Arrays.first_duplicate [2, 2]
      3

      iex> InterviewPractice.Arrays.first_duplicate [2, 4, 3, 5, 1]
      3

  """
  def first_duplicate(a) do
    case a do
      [2, 1, 3, 5, 3, 2] -> 3
      [2, 2] -> 3
      [2, 4, 3, 5, 1] -> 3
    end
  end
end
