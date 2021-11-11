module Kyu7.Countsalutes (countSalutes) where

countSalutes :: String -> Int
countSalutes [] = 0
countSalutes (x : xs)
  | x == '>' = length (filter (== '<') xs) * 2 + countSalutes xs
  | otherwise = countSalutes xs
