module Kyu6.Rotation where

import Debug.Trace

shiftedDiff :: String -> String -> Int
shiftedDiff a b
  | length a /= length b = -1
  | otherwise = countShifts a b 0
  where
    countShifts a b c
      | c > length a = -1
      | a == b = c
      | otherwise = countShifts a (shift b) (c + 1)

    shift [] = []
    shift (x : xs) = xs ++ [x]
