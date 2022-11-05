module Kyu7.ShiftLeft where

shiftLeft :: String -> String -> Int
shiftLeft [] _ = 0
shiftLeft _ [] = 0
shiftLeft a@(x : xs) b@(y : ys)
  | a == b = 0
  | length a == length b = 2 + shiftLeft xs ys
  | length a > length b = 1 + shiftLeft xs b
  | otherwise = 1 + shiftLeft a ys
