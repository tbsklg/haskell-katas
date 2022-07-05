module Kyu7.CountingValleys (valleys) where

valleys :: String -> Int
valleys = go . scanl surface 0
  where
    go (x : 0 : xs)
      | x < 0 = 1 + go xs
      | otherwise = go xs
    go (x : xs) = go xs
    go _ = 0

surface :: Num a => a -> Char -> a
surface x 'U' = x + 1
surface x 'D' = x - 1
surface x _ = x
