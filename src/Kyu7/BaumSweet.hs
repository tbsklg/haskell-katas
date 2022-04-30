module Kyu7.BaumSweet (baumSweet) where

import Data.List (group)

baumSweet :: [Int]
baumSweet = map ((baum . group) . binary) [0 ..]

binary :: Integral a => a -> [a]
binary 0 = []
binary x = binary (x `div` 2) ++ [x `mod` 2]

baum :: [[Int]] -> Int
baum xs
  | any odd zeros = 0
  | otherwise = 1
  where
    zeros = map length . filter (\x -> head x == 0) $ xs
