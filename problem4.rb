i, ans = 999, 0
while (i * i > ans)
  j = i
  while (j * i > ans)
    mult = j * i
    if mult == mult.to_s.reverse.to_i
      ans = mult
    end

    j -= 1
  end

  i -= 1
end

puts ans
