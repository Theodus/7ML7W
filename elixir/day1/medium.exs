
defmodule Medium do
  def size([]), do: 0
  def size([_ | xs]), do: 1 + size(xs)

  def max([]), do: raise "no max"
  def max([n | ns]) do
    Enum.reduce(ns, n, fn(x, a) -> if x > a, do: x, else: a end)
  end

  def min([]), do: raise "no min"
  def min([n | ns]) do
    Enum.reduce(ns, n, fn(x, a) -> if x < a, do: x, else: a end)
  end
end

defmodule Test do
  def assert(a, n) do
    unless a, do: raise "fail: #{n}"
  end
end

Test.assert(Medium.size([1, 2, 3, 4]) == 4, "size")
Test.assert(Medium.max([1, 2, 3, 4]) == 4, "max")
Test.assert(Medium.min([1, 2, 3, 4]) == 1, "min")
