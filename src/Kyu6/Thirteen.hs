module Kyu6.Thirteen where

import Data.Char (digitToInt)

thirt :: Integer -> Integer
thirt n
  | n == finalSum = n
  | otherwise = thirt finalSum
  where
    finalSum = toInteger . sum . zipWith (\x i -> x * (10 ^ i `mod` 13)) digits $ [0 ..]
    digits = reverse . map digitToInt . show $ n
