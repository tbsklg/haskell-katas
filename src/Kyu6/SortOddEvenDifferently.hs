module Kyu6.SortOddEvenDifferently (paritySort) where

import Data.List (sort)

paritySort :: [Int] -> [Int]
paritySort xs = go xs odds evens
  where
    go xs os [] = os
    go xs [] es = es
    go (x : xs) (o : os) (e : es)
      | even x = e : go xs (o : os) es
      | otherwise = o : go xs os (e : es)
    go _ _ _ = []

    odds = sort . filter odd $ xs
    evens = reverse . sort . filter even $ xs
