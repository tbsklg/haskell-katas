module Kyu7.Twins (evenTwins) where

import Data.List (nub, (\\))

evenTwins :: [Int] -> Int
evenTwins xs = length . nub . filter even $ [x + y | x <- xs, y <- xs \\ [x]]
