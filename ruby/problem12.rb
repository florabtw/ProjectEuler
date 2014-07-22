# smallest divisor of a number will always be prime
def getSmallestPrimeFactor(num)
  (2..Math.sqrt(num)).each do |i|
    if num % i == 0
      return i
    end
  end

  return num
end

def getAllPrimeFactors(num)
  vals = []
  while num != 1
    primeFactor = getSmallestPrimeFactor(num)
    num /= primeFactor
    vals << primeFactor
  end

  vals
end

# number of divisors that a number has can be calculated by finding all prime
# factors, taking the powers of each prime factor, adding one, and multiplying
# all the augmented powers together
def calculateNumFactors(num)
  factorMap = Hash.new(0)
  primeFactors = getAllPrimeFactors(num)

  # find the 'power' of each factor
  primeFactors.each { |num| factorMap[num] += 1 }

  # multiply all the powers together after adding one
  factorMap.each_value.reduce(1) { |mult, num| mult * (num + 1) }
end

val, numFactors, increment = 0, 0, 1
while numFactors < 500
  val += increment
  increment += 1

  numFactors = calculateNumFactors(val)
end

puts val
