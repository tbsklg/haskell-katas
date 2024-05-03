module Kyu7.DistinctDigitYear where

import Data.List (nub)

distinctDigitYear :: Int -> Int
distinctDigitYear x = head . dropWhile (not . isDistinct) $ [(x + 1) ..]

isDistinct :: Int -> Bool
isDistinct a = digits a == (nub . digits $ a)

digits :: (Integral a) => a -> [a]
digits 0 = []
digits a = digits (a `div` 10) ++ [a `mod` 10]
