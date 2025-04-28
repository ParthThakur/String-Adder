def string_adder(str)
  delimiter = ","

  if !str.match(/^\/\//).nil?
    delimiter = str[2].chr
    str = str[3..-1]
  end

  str = str.gsub("\n", delimiter)
  numbers = str.split(delimiter).map(&:to_i)

  if numbers.any? { |num| num < 0 }
    raise "Negative numbers not allowed: #{numbers.select { |num| num < 0 }.join(', ')}"
  end
  
  numbers.sum
end
