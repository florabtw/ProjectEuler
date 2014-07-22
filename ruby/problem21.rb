$cache = {}
def factors(n)
  if !$cache[n]
    factors = []
    1.upto(n/2).each do |i|
      factors << i if n % i == 0
    end
    $cache[n] = factors
  end
  $cache[n]
end

def amicables(n)
  amics = []
  (2..n).each do |i|
    sum_divisors = factors(i).reduce(:+)
    if sum_divisors > i && factors(sum_divisors).reduce(:+) == i
      amics << [ sum_divisors, i ]
    end
  end
  amics
end

puts amicables(10000).reduce(0) { |sum, val| sum + val[0] + val[1] }
