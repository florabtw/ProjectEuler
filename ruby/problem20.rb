# iterative for fun
def fact(n)
  fact = 1
  n.downto(1).each do |i|
    fact *= i
  end
  fact
end

puts fact(100).to_s.split('').reduce(0) { |sum, val| sum + val.to_i }
