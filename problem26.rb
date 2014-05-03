def cycle_len(denom)
  remainders = {}
  numer = 1
  counter = 1
  remain = numer % denom

  while remain != 0 && !remainders[remain]
    remainders[remain] = counter
    numer = remain * 10
    remain = numer % denom
    counter += 1
  end

  return remain == 0 ? 0 : counter - remainders[remain]
end

len = 0
max_len = len
max_denom = 1
(1..1000).each do |i|
  len = cycle_len(i)
  if len > max_len
    max_denom = i
    max_len = len
  end
end

puts "d = #{max_denom}"
puts "len = #{max_len}"
