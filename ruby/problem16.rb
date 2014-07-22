puts (2 ** 1000).to_s.split('').reduce(0) { |sum, i| sum + i.to_i }
