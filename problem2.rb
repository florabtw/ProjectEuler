prev, curr, sum = 1, 1, 0
while (curr < 4000000)
  sum += curr unless curr.odd?
  prev, curr = curr, curr + prev
end

puts sum
