module Kyu7.Pattern7 (pattern) where

pattern :: Int -> String
pattern 0 = ""
pattern n
  | n < 0 = ""
  | otherwise = pattern' 0
  where
    pattern' x
      | x == n = ""
      | otherwise = (concatMap show . take n . drop x . cycle $ [1 .. n]) ++ "\n" ++ pattern' (x + 1)
