module Kyu7.IsPolydivisible (isPolydivisible) where

import Data.List (inits)

isPolydivisible :: Int -> Bool
isPolydivisible = foldl (\y (i, x) -> y && x `mod` i == 0) True . zip [1 ..] . map read . tail . inits . show
