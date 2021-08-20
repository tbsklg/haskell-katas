module Kyu7.LastSurvivor where

lastSurvivor :: String -> [Int] -> Char
lastSurvivor [x] _ = x
lastSurvivor (x : xs) (y : ys) = lastSurvivor (removeAt y (x : xs)) ys

removeAt :: (Eq t, Num t) => t -> [a] -> [a]
removeAt i (x : xs)
  | i == 0 = xs
  | otherwise = x : removeAt (i - 1) xs
