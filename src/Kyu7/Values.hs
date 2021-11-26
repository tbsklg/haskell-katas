module Kyu7.Values where

import Data.List (group, sort)

missingValues :: [Int] -> Int
missingValues l = once * once * twice
  where
    once = head . head . occurencesOf $ 1
    twice = head . head . occurencesOf $ 2
    occurencesOf n = filter (\x -> length x == n) . group . sort $ l
