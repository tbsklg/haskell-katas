module Kyu7.ProductOrSum (productOrSum, ProductOrSum (..)) where

import Data.List (sort)

data ProductOrSum = Product | Same | Sum deriving (Eq, Ord, Enum, Bounded, Show)

productOrSum :: [Int] -> Int -> ProductOrSum
productOrSum i x
  | product' > sum' = Product
  | sum' > product' = Sum
  | otherwise = Same
  where
    sum' = sum . take x $ highest
    product' = product . take x $ lowest
    highest = reverse . sort $ i
    lowest = sort i
