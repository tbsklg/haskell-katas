module Kyu6.UniqueNumber where

import qualified Data.Map as M

getUnique :: [Int] -> Int
getUnique [] = -1
getUnique [_] = -1
getUnique [x, y] = -1
getUnique (x : y : z : xs)
  | x /= y && x /= z = x
  | otherwise = head . dropWhile (== x) $ (y : z : xs)
