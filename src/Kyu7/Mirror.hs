module Kyu7.Mirror (mirror) where

import Data.List (sort)

mirror :: [Int] -> [Int]
mirror [] = []
mirror xs = sort xs ++ (tail . reverse . sort $ xs)
