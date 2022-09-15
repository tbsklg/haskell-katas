module Kyu7.FindMinMaxProduct where

import Data.List (subsequences)

findMinMaxProduct :: [Integer] -> Int -> Maybe (Integer, Integer)
findMinMaxProduct [] _ = Nothing
findMinMaxProduct xs n
  | n > length xs = Nothing
  | otherwise = Just (minimum ps, maximum ps)
  where
    ps = map product . filter (\x -> length x == n) . subsequences $ xs
