example_function = fn n -> IO.puts(n) end
example_function.("testing")

# values in elixir are immutable
list = [1, 2, 3, 4]
List.delete_at(list, -1)
# adds one to end of list
list ++ [1]
# index 2
List.delete_at(list, 2)

# fn functions
add2 = fn n -> n + 2 end
add2.(2)

# map example
Enum.map(["dogs", "cats", "flowers"], &String.upcase/1)

# join_with_whitespace and capitalize_all aren't declared
def capitalize_words_no_pipes(title) do
  join_with_whitespace(capitalize_all(String.split(title)))
end

def capitalize_words_with_pipes(title) do
  title
  |> String.split()
  |> capitalize_all
  |> join_with_whitespace
end

# result of empty list is an empty list, when it contains values the result is a new list
# where the first string is uppercased and the rest of the items are passed the upcase function
defmodule StringList do
  def upcase([]) do: []
  def upcase([first | rest]), do: [String.upcase(first) | upcase(rest)]
end

StringList.upcase(["dogs", "hot dogs", "bananas"])

# in iex you can compile a module with c("<file_name>")
c("checkout.ex")

defmodule Checkout do
  def total_cost(price, tax_rate), do: price * (tax_rate + 1) # one-liner
end
