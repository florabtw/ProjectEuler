def estimate_max(power)
  number = []
  loop do
    number << 9
    break if num_sum(number.join.to_i, power) <= number.join.to_i
  end
  num_sum(number.join.to_i, power)
end

def num_sum(n, power)
  n.to_s.split('').reduce(0) { |sum, c| sum + c.to_i ** power }
end

def is_match(n, power)
  num_sum(n, power) == n
end

power = 5
max = estimate_max(power)
nums = []
(2..max).each do |i|
  nums << i if is_match(i, power)
end

puts nums.reduce(:+)
