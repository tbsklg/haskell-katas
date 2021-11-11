module Kyu7.Gift where

import Data.Bifunctor (bimap)
import Data.Function (on)
import Data.List (sortBy)

buy :: (Num a, Eq a) => a -> [a] -> Maybe (Int, Int)
buy c l
  | null getMatches = Nothing
  | otherwise = Just $ minimum getMatches
  where
    getMatches =
      map (bimap fst fst)
        . filter (\(x, y) -> snd x + snd y == c)
        . filter (\(x, y) -> fst x /= fst y)
        $ [(x, y) | x <- withIndexes, y <- withIndexes]
    withIndexes = zip [0 ..] l

-- buy :: (Num a, Eq a) => a -> [a] -> Maybe (Int, Int)
-- buy c is = listToMaybe [ (x, y) | x <- [0..n - 2], y <- [x + 1..n - 1], (is !! x) + (is !! y) == c ]
--              where n = length is
