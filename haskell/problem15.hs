main = print $ numRoutes 0 0

-- Memoization! :D
numRoutes = (!!) . (!!) [map (routes x) [0..20] | x <- [0..20]]
    where
        routes x y
            | x == 20 || y == 20 = 1
            | otherwise = numRoutes (x+1) y + numRoutes x (y+1)
