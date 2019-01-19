defmodule Bowling do
  @moduledoc """
  Documentation for Bowling.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bowling.hello()
      :world

  """
  def hello do
    :world
  end

  def score(game) do
    game
    |> List.flatten

    |> Enum.filter(&(is_number(&1)))
    # |> Enum.filter(fn e -> is_number e end)
    # |> Enum.filter(&is_number/1)

    |> Enum.reduce(&+/2)
    # |> Enum.reduce(0, fn n, acc -> n + acc end)
    # |> Enum.sum
  end
end
