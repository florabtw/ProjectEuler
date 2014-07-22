sum_of_squares = (1..100).reduce { |sum, i| sum + (i * i) }
sum = (1..100).reduce { |sum, i| sum + i }
puts (sum * sum) - sum_of_squares
