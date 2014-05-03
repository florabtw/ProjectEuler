def cycle_len(num)
  len = 0
  num.each_with_index do |c, i|
    len = check_cycle(num, i)
    break if len != 0
  end
  len
end

def check_cycle(num, i)
  j = i
  diff = 0
  loop do
    j = num[(j+1)..-1].index(num[i])
    if !j.nil?
      j += diff + i + 1
      diff = j - i
    end
    break if j.nil? || found_cycle(num, i, diff)
  end

  return j.nil? ? 0 : diff
end

def found_cycle(num, i , diff)
  # quick check
  j = i + diff
  while j < num.length
    return false if num[j] != num[i]
    j += diff
  end

  # slow check
  (0..diff).each do |j|
    return false if num[i+j] != num[i+diff+j]
  end

  true
end

def divide_one_by(denom)
  result = []
  counter = 0
  numer = 1
  loop do
    result << numer / denom
    remain = numer % denom
    numer = (remain * 10)
    counter += 1
    break if numer == 0 || counter == 5000
  end

  result[1..-1]
end

len = 0
max_len = len
max_denom = 1
(1..1000).each do |i|
  len = cycle_len(divide_one_by(i))
  if len > max_len
    max_denom = i
    max_len = len
  end
end

puts "d = #{max_denom}"
puts "len = #{max_len}"
