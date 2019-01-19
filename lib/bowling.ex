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
    |> Enum.filter(fn e -> is_number e end)
    |> Enum.sum
  end
end
