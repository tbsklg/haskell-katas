module Kyu7.FindUnknownNumber where

findUnknown :: Int -> Int -> Int -> Int
findUnknown x y z = head . filter isUnknownNumber $ [1 ..]
  where
    isUnknownNumber c =
      c `mod` 3 == x
        && c `mod` 5 == y
        && c `mod` 7 == z
