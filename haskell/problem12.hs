import Data.List

main = print $ find ((>500) . numFactors) triangleNums

numFactors = product .  map ((+1) . length) . group . primeFactors

primeFactors 1 = []
primeFactors n =
    let (Just smallestFactor) = find ((==0) . mod n) [2..]
    in  smallestFactor : primeFactors (n `div` smallestFactor)

triangleNums = scanl1 (+) [1..]
