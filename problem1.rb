puts (1...1000).inject(0) { |sum, i| (i % 5 == 0 || i % 3 == 0) ? sum + i : sum }
