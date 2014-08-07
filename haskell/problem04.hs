main = return $ findPal 0 999 999

findPal :: (Integral a, Show a) => a -> a -> a -> a
findPal curr upper lower
    | upper * upper < curr = curr
    | upper * lower < curr = findPal curr (upper - 1) (upper - 1)
    | otherwise =
        let mult = upper * lower
            isPal = show mult == reverse (show mult)
        in  if isPal then findPal mult (upper - 1) (upper - 1)
            else findPal curr upper (lower - 1)
