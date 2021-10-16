module Kyu7.OddOnesOut (oddOnesOut) where

oddOnesOut :: (Ord a) => [a] -> [a]
oddOnesOut l = removeOdds l l
  where
    removeOdds [] _ = []
    removeOdds (x : xs) l
      | even $ length $ filter (== x) l = x : removeOdds xs l
      | otherwise = removeOdds xs l

-- oddOnesOut xs = filter evens xs
--   where evens n = (length . filter (\x -> x == n) $ xs) `mod` 2 == 0
