defmodule ListFilter do
  def call(list) do
    # Enum.filter([1, 2, 3, 4], fn x -> rem(x, 2) == 0 end)
    newList = Enum.filter(list, fn x -> is_integer(x) end)
    newList = Enum.filter(newList, fn x -> rem(x, 2) != 0 end)
    evenCount = Enum.count(newList)
    IO.puts "Even count: #{evenCount}"
  end
end
