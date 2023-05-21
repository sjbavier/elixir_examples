defmodule ListFunctions do
  def each([], _function), do nil
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  def map([], _function), do nil
  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end
end
