defmodule Lib.FunctionAsValues do
  # there are two ways to set named functions as values
  upcase = fn string -> String.upcase(string) end

  # and the shorthand way with & operator capturing the reference
  # to the function String.upcase/1
  upcase_shorthand = &String.upcase/1

  # you can also create anonymous functions
  # & defines the beginning of the function
  # &1 and &2 represent the first and second arguments
  total_cost = &(&1 * &2)
end
