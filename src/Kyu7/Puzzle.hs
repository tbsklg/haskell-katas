module Kyu7.Puzzle (testit) where

import Data.List (nub, sort)

testit :: [Int] -> [Int] -> [Int]
testit a b = sort . (++) (nub a) $ nub b
