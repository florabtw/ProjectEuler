prev, curr = 1, 1
counter = 2
while curr.to_s.length < 1000
  counter += 1
  prev, curr = curr, curr + prev
end

puts counter
