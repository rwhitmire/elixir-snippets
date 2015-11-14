list = Enum.map [1, 2, 3, 4], &(&1 + 2)
IO.inspect(list)

IO.puts Enum.each list, &(IO.inspect &1)
