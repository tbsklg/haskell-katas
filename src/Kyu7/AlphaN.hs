module Kyu7.AlphaN where

import Data.List (sortBy)

sortIt :: [String] -> Int -> [String]
sortIt xs n = sortBy nthLetter xs
  where
    nthLetter x y
      | xLetter == yLetter = compare x y
      | otherwise = compare xLetter yLetter
      where
        xLetter = x !! (n - 1)
        yLetter = y !! (n - 1)

-- sortIt xs n = sortBy (comparing (!! (n-1)) <> compare) xs
