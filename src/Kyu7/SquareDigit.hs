module Kyu7.SquareDigit where

import Data.Char (digitToInt)

squareDigit :: Int -> Int
squareDigit i
  | i < 0 = squared * (-1)
  | otherwise = squared
  where
    squared = read . concatMap (show . ((^ 2) . digitToInt)) . show $ abs i
