import Control.Monad

main = print . product $ head triplets

triplets = do
    x <- [1..]
    let yMax = (1000-x)
    y <- [x..yMax]
    let zMax = min (x+y) (1000-x-y)
    z <- [y..zMax]
    guard (x + y + z == 1000)
    guard (x^2 + y^2 == z^2)
    return [x,y,z]
