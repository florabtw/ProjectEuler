-- Must compile with increased stack space:
-- $ ghc -O3 --make -with-rtsopts='-K64m' problem14.hs

import Data.List
import Control.Applicative

main = do
    let sequenceLengths = map (length . collatz) [1..1000000]
        longestCollatz = maximum sequenceLengths
    print $ (+1) <$> elemIndex longestCollatz sequenceLengths

collatz 1 = [1]
collatz x
    | even x = x : collatz (x `div` 2)
    | otherwise = x : collatz (x * 3 + 1)
