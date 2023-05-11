defmodule FunctionAsValues do
  # there are two ways to set named functions as values
  upcase = fn string -> String.upcase(string) end

  # and the shorthand way with & operator capturing the reference
  # to the function String.upcase/1
  upcase_shorthand = &String.upcase/1
end
