module Kyu7.LargestPairSum (largestPairSum) where

import Data.List (sort)

largestPairSum :: (Integral a) => [a] -> a
largestPairSum = sum . take 2 . reverse . sort
