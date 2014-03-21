# currently takes ~13 seconds on my laptop
# I'm pretty okay with this solution. It's not the fastest,
# but I understand how it works and it's much better than my first try.

num = 10001
len = 0
while len / (Math.log(len) - 1) < num
  len += 100 # approximate is okay
end

nums = (2..len).to_a

nums.each do |i|
  nums.select! { |j| j == i || j % i != 0 }
end

puts nums[num-1]
