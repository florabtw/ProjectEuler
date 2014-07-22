def underTwenty(num)
  case num
  when 1,2,6,10
    return 3
  when 4,5,9
    return 4
  when 3,7,8
    return 5
  when 11,12
    return 6
  when 15,16
    return 7
  when 13,14,18,19
    return 8
  when 17
    return 9
  else
    raise 'Bad input'
  end
end

def tens(num)
  case num.to_s[0].to_i
  when 4,5,6
    return 5
  when 2,3,8,9
    return 6
  when 7
    return 7
  else
    raise 'Bad input'
  end
end

def hundreds(num)
  return underTwenty(num / 100) + 'hundred'.length
end

def numWordLength(num)
  case num
  when 0
    # exception to make recursion easier
    return 0
  when 1..19
    return underTwenty(num)
  when 20..99
    return tens(num) + numWordLength(num % 10)
  when 100..999
    if num % 100 == 0
      return hundreds(num)
    else
      return hundreds(num) + 'and'.length + numWordLength(num % 100)
    end
  when 1000
    return 11
  else
    raise 'Bad input'
  end
end

puts (1..1000).reduce(0) { |sum, num| sum + numWordLength(num) }
