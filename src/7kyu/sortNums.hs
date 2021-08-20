module SortNums where

import Data.List (sort)

sortNumbers :: [Int] -> Maybe [Int]
sortNumbers xs = case xs of
  [] -> Nothing
  xs -> Just $ sort xs
