module Kyu7.StringDoubles where

solve :: String -> String
solve [] = []
solve xs = foldl reduce [head xs] $ tail xs
  where
    reduce current next
      | null current = [next]
      | last current == next = init current
      | otherwise = current ++ [next]
