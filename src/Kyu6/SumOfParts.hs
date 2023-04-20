module Kyu6.SumOfParts where

import Data.List (tails)

partsSum :: [Integer] -> [Integer]
partsSum xs = scanl (\y x -> y - x) (sum xs) xs
