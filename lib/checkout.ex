# by convention instead of Checkout use a single namespace to avoid collisions "Example"
defmodule Example.Checkout do
  def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
  end
end
