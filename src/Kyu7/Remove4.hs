module Kyu7.Remove4 where

remove :: [Int] -> [Int] -> [Int]
remove x y = filter (`notElem` y) x
