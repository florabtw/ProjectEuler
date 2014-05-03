def gen_primes
  primes = (2..1000).to_a
  primes.each do |i|
    break if i > Math.sqrt(1000)
    primes.select! { |j| j == i || j % i != 0 }
  end
  primes += primes.map { |num| -num }
end

def run_formula(n, a, b)
  n ** 2 + a * n + b
end

def is_prime(n)
  (2..Math.sqrt(n.abs)).each do |i|
    return false if n % i == 0
  end
  true
end

def test_coefficients(a, b)
  n = 0
  while is_prime(run_formula(n, a, b))
    n += 1
  end
  n
end

# a probably has to be prime but I can't prove it
a_options = (-1000..1000).to_a

# b must be prime when n = 0
b_options = gen_primes

max_primes = 0
coeffs = []
a_options.each do |a|
  b_options.each do |b|
    len = test_coefficients(a, b)
    if len > max_primes
      max_primes = len
      coeffs = [a, b]
    end
  end
end

puts coeffs.reduce(:*)
