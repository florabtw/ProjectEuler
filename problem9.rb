triplets = []

# calculate all triplets a,b,c in R s.t. a < b < c and a + b + c = 1000
(1..332).each do |i|
  (i+1..1000).each do |j|
    if 1000 - j - i <= j
      break
    end

    triplets << [i,j,1000-i-j]
  end
end

# find which triplet satisfies a^2 + b^2 = c^2
triplets.select! { |a| a[0] ** 2 + a[1] ** 2 == a[2] ** 2 }

puts triplets[0].reduce { |mult, i| mult * i }
