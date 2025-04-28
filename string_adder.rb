def string_adder(str)
  if str.match(/^\/\//)
    delimiter = str[2].chr
    str = str[3..-1]
    str = str.gsub("\n", delimiter)
  end

  str.split(delimiter).map(&:to_i).sum
end
