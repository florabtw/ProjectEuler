main = print . sum $ takeWhile (<2000000) primes

primes = 2 : [x | x <- [3,5..], all ((>0) . (mod x)) (factorsToTry x)]
    where
        factorsToTry x = takeWhile (\p -> p * p <= x) primes
