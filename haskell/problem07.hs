main = print $ (2 : sieve [3,5..]) !! 10000

sieve :: (Integral a) => [a] -> [a]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
