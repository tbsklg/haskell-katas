module Kyu7.Triplet where

import Data.List (nub, sort)

maxTriSum :: [Integer] -> Integer
maxTriSum = sum . take 3 . reverse . sort . nub
