# Takes ~100 ms
num = 10001
len = 0

# over-approximate answer
while len / (Math.log(len) - 1) < num
  len += 100
end

nums = (2..len).to_a

nums.each do |i|
  if i > Math.sqrt(len)
    break
  end

  nums.select! { |j| j == i || j % i != 0 }
end

puts nums[num-1]
