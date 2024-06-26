module Kyu8.CheckSameCase (sameCase) where

import Data.Char (isAlpha, isLower, isUpper)

sameCase :: Char -> Char -> Int
sameCase a b
  | (not . isAlpha $ a) || (not . isAlpha $ b) = -1
  | isLower a && isLower b || isUpper a && isUpper b = 1
  | otherwise = 0
