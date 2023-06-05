module Kyu6.IsHappy where

import Data.Char (digitToInt)

isHappy :: Integer -> Bool
isHappy n = isHappy' n []
 where
  isHappy' x xs
    | x == 1 = True
    | x `elem` xs = False
    | otherwise = isHappy' (sumOfSquares x) (x : xs)

  square = (^ 2)
  sumOfSquares = toInteger . sum . map square . digits
  digits = map digitToInt . show . fromIntegral

