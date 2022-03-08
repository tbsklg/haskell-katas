module Kyu7.LeastLarger (leastLarger) where

import Data.Function (on)
import Data.List (sortBy)

leastLarger :: [Int] -> Int -> Maybe Int
leastLarger xs i
  | null l = Nothing
  | otherwise = Just . head $ l
  where
    v = xs !! i
    l =
      map fst
        . sortBy (compare `on` snd)
        . filter (\(_, x) -> x > v)
        . filter (\(x, _) -> x /= i)
        . zip [0 ..]
        $ xs
