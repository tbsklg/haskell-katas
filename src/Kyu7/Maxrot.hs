module Kyu7.Maxrot where

maxRot :: Integer -> Integer
maxRot i = maximum . map (\x -> read x :: Integer) $ show i : rotate (show i) [] 0

rotate :: [a] -> [[a]] -> Int -> [[a]]
rotate x l i
  | i == length x - 1 = []
  | otherwise = current : rotate current (l ++ [current]) (i + 1)
  where
    current = take i x ++ rotateOnce (drop i x)

rotateOnce :: [a] -> [a]
rotateOnce [] = []
rotateOnce [x] = [x]
rotateOnce (x : y : ys) = y : ys ++ [x]

-- maxRot = read . go . show
--   where go n@[_] = n
--         go n@(x1:x2:xs) = max n (x2:go (xs ++ [x1]))
--         --                          We only need to check if the rotated part is better.
