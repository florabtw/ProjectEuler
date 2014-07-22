$collatzCache = {}

def collatzLength(num)
  if num == 1
    return 1
  elsif $collatzCache[num]
    return $collatzCache[num]
  else
    if num.even?
      newNum = num / 2
    else
      newNum = num * 3 + 1
    end

    $collatzCache[num] = collatzLength(newNum) + 1
    return $collatzCache[num]
  end
end

answer = 0
maxLength = 0
(1...1000000).each do |i|
  len = collatzLength(i)
  if len > maxLength
    maxLength = len
    answer = i
  end
end

puts answer
