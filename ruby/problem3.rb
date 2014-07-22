def primeFactor(n)
  (2..Math.sqrt(n)).each do |i|
    if n % i == 0
      return primeFactor(n / i)
    end
  end
  return n
end

puts primeFactor(600851475143)
