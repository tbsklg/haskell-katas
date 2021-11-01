module Kyu7.Weights where

contentWeight :: Int -> String -> Int
contentWeight weight str
  | isSmaller str = weight `div` (scale str + 1)
  | otherwise = (weight `div` (scale str + 1)) * scale str

scale :: String -> Int
scale s = read (head (words s)) :: Int

isSmaller :: String -> Bool
isSmaller s = last (words s) == "smaller"
