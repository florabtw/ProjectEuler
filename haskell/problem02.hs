main = do
    let fib x y = x : fib y (x + y)
    return . sum . filter even . takeWhile (<4000000) $ fib 1 1
