module Kyu5.JosephusPermutation where

josephus :: [a] -> Int -> [a]
josephus [] _ = []
josephus xs k = survivor : josephus remaining k
  where
    survivor = fst . dropNth k $ xs
    remaining = snd . dropNth k $ xs

dropNth :: Int -> [a] -> (a, [a])
dropNth n xs = (xs !! (at - 1), drop at xs ++ take (at - 1) xs)
  where
    at
      | n `mod` length xs == 0 = length xs
      | otherwise = n `mod` length xs

-- josephus :: [a] -> Int -> [a]
-- josephus [] _ = []
-- josephus ls k = let (x:xs) = drop (k - 1) $ cycle ls in
--                 x : take (length ls - 1) xs `josephus` k
