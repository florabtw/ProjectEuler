sum = 1
diff = 2
counter = 0
i = 3
while i <= 1001 ** 2
  counter += 1
  sum += i

  diff += 2 if counter % 4 == 0
  i += diff
end

puts sum
