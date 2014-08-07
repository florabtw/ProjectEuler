import Data.List

main = print $ largestPrimeFactor 600851475143

largestPrimeFactor x =
    let largest = floor . sqrt $ fromIntegral x
        smallest = find ((==0) . mod x) [2..largest]
    in  case smallest of
            Nothing -> x
            Just y -> largestPrimeFactor (x `div` y)
