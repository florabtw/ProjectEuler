main = print $ head [x | x <- [20,40..], all ((==0) . (mod x)) [11..20]]
