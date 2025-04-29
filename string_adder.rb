def string_adder(str)
  sum = 0
  current = 0
  negative_number = false
  negatives = []

  str.each_char do |char|
    if char >= '0' && char <= '9'
      current = current * 10 + char.to_i
    elsif char == '-'
      negative_number = true
    else
      sum += current if current <= 1000
      negatives << -current if negative_number && current <= 1000
      negative_number = false
      current = 0
    end
  end

  negatives << -current if negative_number
  if !negatives.empty?
    puts "Negative numbers not allowed: #{negatives.join(', ')}"
    raise "Negative numbers not allowed: #{negatives.join(', ')}"
  end

  sum += current if current <= 1000
  sum
end
