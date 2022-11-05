module Kyu7.Amazon where

countArara :: Int -> String
countArara = unwords . adakOrAnane

adakOrAnane :: Int -> [String]
adakOrAnane i
  | even i = replicate (i `div` 2) "adak"
  | otherwise = adakOrAnane (i - 1) ++ ["anane"]
