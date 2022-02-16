module Kyu7.OrderedCount where

orderedCount :: String -> [(Char, Int)]
orderedCount [] = []
orderedCount (x : xs) = (x, occs) : orderedCount next
  where
    next = filter (/= x) xs
    occs = length . filter (== x) $ (x : xs)

-- [(c, length $ filter (==c) s) | c <- nub s]
