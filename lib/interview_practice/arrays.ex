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
      2

      iex> InterviewPractice.Arrays.first_duplicate [2, 4, 3, 5, 1]
      -1

  """
  def first_duplicate(list) do
    unique = Enum.uniq(list)

    if list == unique do
      -1
    else
      List.first(list -- unique)
    end
  end

  @doc """
  Given a string s consisting of small English letters, find and return the
  first instance of a non-repeating character in it. If there is no such
  character, return '_'.

  ## Examples

      iex> InterviewPractice.Arrays.first_not_repeating_character "abacabad"
      "c"

      iex> InterviewPractice.Arrays.first_not_repeating_character "abacabaabacaba"
      "_"

  """
  def first_not_repeating_character(string) do
    frequencies_map =
      String.codepoints(string)
      |> Enum.frequencies()

    String.codepoints(string)
    |> Enum.find("_", fn char -> {char, 1} in frequencies_map end)
  end
end
