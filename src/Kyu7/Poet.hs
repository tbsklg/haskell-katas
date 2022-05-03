module Kyu7.Poet where

import Data.List (sort)

pendulum :: [Int] -> [Int]
pendulum xs = reverse evens ++ odds
  where
    odds = map snd . filter (\(index, _) -> odd index) $ indexed
    evens = map snd . filter (\(index, _) -> even index) $ indexed
    indexed = zip [0 ..] . sort $ xs
