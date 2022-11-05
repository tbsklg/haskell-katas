module Kyu7.GetSum where

getSum :: Int -> Int -> Int
getSum a b
  | a < b = sum [a .. b]
  | otherwise = sum [b .. a]
