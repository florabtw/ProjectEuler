def factors(n)
  factors = []
  (1..(n/2)).each do |i|
    factors << i if n % i == 0
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
