get_string = fn
  (0, 0, _) -> "fizzbuzz"
  (0, _, _) -> "fizz"
  (_, 0, _) -> "buzz"
  (_, _, a) -> a
end

fizzbuzz = fn n ->
  get_string.(rem(n, 3), rem(n, 5), n)
end

IO.puts fizzbuzz.(10)
IO.puts fizzbuzz.(11)
IO.puts fizzbuzz.(12)
IO.puts fizzbuzz.(13)
IO.puts fizzbuzz.(14)
IO.puts fizzbuzz.(15)
IO.puts fizzbuzz.(16)
