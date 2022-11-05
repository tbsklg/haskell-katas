module Kyu7.Makevalley where

import Data.List (sort)

makeValley :: [Int] -> [Int]
makeValley arr
  | odd $ length arr = reverse left ++ right
  | otherwise = reverse right ++ left
  where
    left = fst $ split $ sort arr
    right = snd $ split $ sort arr

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x : y : xs) = (x : xp, y : yp) where (xp, yp) = split xs

-- makeValley lst = map snd $ leftWing ++ reverse rightWing where
--   sorted = reverse $ sort lst
--   (leftWing, rightWing) = partition (even . fst) $ zip [0..] sorted
