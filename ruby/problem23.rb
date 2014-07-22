def factors(n)
  factors = [1]
  (2..Math.sqrt(n)).each do |i|
    if n % i == 0
      factors << i
      factors << n / i if n / i != i
    end
  end
  factors
end

def abundants
  abundants = []
  (12..28110).each do |num|
    abundants << num if factors(num).reduce(:+) > num
  end
  abundants
end

special_nums = []
abundant_nums = abundants
abundant_nums.each_with_index do |num1, i|
  abundant_nums[i..-1].each do |num2|
    special_nums << num1 + num2
  end
end

puts ((1..28123).to_a - special_nums).reduce(:+)
