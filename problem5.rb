num = (11..20).reduce { |mult, i| mult * i } # smallest guaranteed answer
20.step(num, 20) do |i|
  isAns = true

  (11..20).each do |j|
    if i % j != 0
      isAns = false
      break
    end
  end

  if isAns
    puts i
    break
  end
end
