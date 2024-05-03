module Kyu7.CheckDigit where

checkDigit :: Int -> Int -> Int -> Int -> Bool
checkDigit number index1 index2 digit =
  elem digit
    . take (maximum [index1, index2] + 1)
    . drop (minimum [index1, index2])
    . digits
    $ number

digits :: (Integral a) => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
