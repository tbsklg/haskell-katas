module Kyu6.SortArray where

import Data.List (sort, sortOn)

sortArray :: [Int] -> [Int]
sortArray xs = map snd . sortOn fst $ (evens ++ sortedOdd)
  where
    evens = filter (\(x, y) -> even y) indexed
    sortedOdd = zip oddIndexes . sort . filter odd $ xs
    oddIndexes = map fst . filter (\(x, y) -> odd y) $ indexed
    indexed = zip [0 ..] xs

-- sortArray :: [Int] -> [Int]
-- sortArray = replaceOdd <$> id <*> sort . filter odd
--   where replaceOdd xs [] = xs
--         replaceOdd (x:xs) oos@(o:os)
--           | even x    = x : replaceOdd xs oos
--           | otherwise = o : replaceOdd xs os
