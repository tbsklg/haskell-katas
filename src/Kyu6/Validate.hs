module Kyu6.Validate where

import Data.Char (digitToInt)

validate :: Integer -> Bool
validate i = validCreditCard . double $ digits
  where
    validCreditCard = (==) 0 . (`mod` 10) . sum

    double xs
      | even . length $ xs = map nine . zipWith (*) xs . cycle $ [2, 1]
      | otherwise = map nine . zipWith (*) xs . cycle $ [1, 2]

    nine x | x > 9 = x - 9
    nine x = x

    digits = map (toInteger . digitToInt) . show $ i
