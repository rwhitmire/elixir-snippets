prefix = fn first_str ->
  fn second_str ->
    "#{first_str} #{second_str}"
  end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
