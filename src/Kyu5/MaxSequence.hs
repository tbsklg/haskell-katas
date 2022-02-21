module Kyu5.MaxSequence where

import Data.List (tails, inits)

-- Return the greatest subarray sum within the array of integers passed in.
maxSequence :: [Int] -> Int
maxSequence = maximum . map sum . concatMap tails . inits
