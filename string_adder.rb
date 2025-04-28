def string_adder(str)
  delimiter = ","

  if !str.match(/^\/\//).nil?
    delimiter = str[2].chr
    str = str[3..-1]
  end

  str = str.gsub("\n", delimiter)
  str.split(delimiter).map(&:to_i).sum
end
