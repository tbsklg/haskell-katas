module Kyu7.SF87 where

import Data.List (sort)

shuffledList :: [Int] -> [Int]
shuffledList l = findAt 0
  where
    findAt i
      | last' == sumOthers = sort others
      | otherwise = findAt (i + 1)
      where
        last' = last shuffle
        sumOthers = sum . init $ shuffle
        others = init shuffle

        shuffle = take (length l) . drop i . cycle $ l
