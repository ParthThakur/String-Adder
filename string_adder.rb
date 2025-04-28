def string_adder(str)
  str.split(",").map(&:to_i).sum
end
