import Data.List

main = print $ find ((>500) . numFactors) triangleNums

numFactors = foldl (*) 1 .  map ((+1) . length) . group . primeFactors

primeFactors 1 = []
primeFactors n =
    let (Just smallestFactor) = find ((==0) . mod n) [2..]
    in  smallestFactor : primeFactors (n `div` smallestFactor)

triangleNums = getNums 0 1

getNums sum curr =
    let nextNum = (sum + curr)
    in  nextNum : getNums nextNum (curr + 1)
