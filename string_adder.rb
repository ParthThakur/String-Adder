def string_adder(str)
  str.gsub("\n", ",").split(",").map(&:to_i).sum
end
