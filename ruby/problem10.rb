max = 2000000
nums = (2..max).to_a

nums.each do |i|
  if (i > Math.sqrt(max))
    break
  end

  nums.select! { |j| j == i || j % i != 0 }
end

puts nums.reduce { |sum, i| sum + i }