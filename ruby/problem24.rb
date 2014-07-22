# My solution - takes ~20 seconds
def combine(n, perms)
  result = []
  perms.each do |a|
    result << [n] + a
  end
  result
end

def permutations(n)
  return [n] if n.length == 1

  perms = []
  (0...n.length).each do |i|
    perms += combine(n[i], permutations(n - [ n[i] ]))
  end
  perms
end

puts permutations([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])[1000000-1].inspect

# Solution using permutation() - takes ~3 seconds
# puts [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[999999].inspect
