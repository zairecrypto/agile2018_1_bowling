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
  # VERSION 1 {

    # game
    # |> List.flatten
    
    # |> Enum.filter(fn e -> is_number e end)
    # |> Enum.filter(&(is_number(&1)))
    # |> Enum.filter(&is_number/1)
    
    # |> Enum.reduce(0, fn n, acc -> n + acc end)
    # |> Enum.reduce(&+/2)
    # |> Enum.sum

  # }

  # VERSION 2 {
    game_list = List.flatten(game)
    |> Enum.map(fn x when is_nil(x) -> 0; x-> x end)

    _score(game_list ++ [:end])
  # }
  end

  defp _score([10,a2,b1,:end]), do: 10 + a2 + b1

  #two strike
  defp _score([10,_,10,b2,c1 | tail]), do: 20 + c1 + _score([10,b2,c1|tail])

  # one strike
  defp _score([10,_,b1,b2 | tail]), do: 10 + b1 + b2 + _score([b1,b2|tail])

  # one spare
  defp _score([a1,a2,b1 | tail]) when a1 + a2 == 10, do: 10 + b1 + _score([b1|tail])
  
  # default scoring
  defp _score([a1,:end]), do: a1
  defp _score([a1,a2 | tail]), do: a1 + a2 + _score(tail)
end
