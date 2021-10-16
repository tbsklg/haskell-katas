module Kyu7.TripleX (tripleX) where

tripleX :: String -> Bool
tripleX [] = False
tripleX [x] = False
tripleX [x,y] = False
tripleX (x:y:ys) 
    | x == 'x' = y == 'x' && head ys == 'x'
    | otherwise = tripleX (y:ys)

-- tripleX = isPrefixOf "xxx" . dropWhile (/= 'x')