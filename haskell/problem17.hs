main = print . length . concat . map written $ [1..1000]

ones :: Integer -> String
ones 0 = "zero"
ones 1 = "one"
ones 2 = "two"
ones 3 = "three"
ones 4 = "four"
ones 5 = "five"
ones 6 = "six"
ones 7 = "seven"
ones 8 = "eight"
ones 9 = "nine"

tens :: Integer -> String
tens x
    | x < 10 = ones x
tens 10 = "ten"
tens 11 = "eleven"
tens 12 = "twelve"
tens 13 = "thirteen"
tens 14 = "fourteen"
tens 15 = "fifteen"
tens 16 = "sixteen"
tens 17 = "seventeen"
tens 18 = "eighteen"
tens 19 = "nineteen"
tens 20 = "twenty"
tens 30 = "thirty"
tens 40 = "forty"
tens 50 = "fifty"
tens 60 = "sixty"
tens 70 = "seventy"
tens 80 = "eighty"
tens 90 = "ninety"
tens x =
    let onesPlace  = x `mod` 10
        nearestTen = x - onesPlace
    in tens nearestTen ++ ones onesPlace

written :: Integer -> String
written 1000 = "onethousand"
written x
    | x < 10           = ones x
    | x < 100          = tens x
    | x `mod` 100 == 0 = hundredsWritten
    | otherwise        = hundredsWritten ++ "and" ++ tens (x `mod` 100)
    where
        hundredsWritten = ones (x `div` 100) ++ "hundred"
