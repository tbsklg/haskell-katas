module Kyu7.MinimumSteps where

import Data.List (sort)

minimumSteps :: [Int] -> Int -> Int
minimumSteps l k = steps (sort l) (minimum l)
  where
    steps [] _ = 0
    steps [x] _ = 0
    steps (x : y : ys) sum
      | sum < k = 1 + steps (y : ys) (y + sum)
      | otherwise = 0

-- minimumSteps xs n = length $ takeWhile (< n) $ scanl1 (+) $ sort xs
