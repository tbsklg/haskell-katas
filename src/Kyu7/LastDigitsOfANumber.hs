module Kyu7.LastDigitsOfANumber (lastDigits) where

lastDigits :: Int -> Int -> [Int]
lastDigits 0 _ = [0]
lastDigits t s = reverse . take s . reverse . digits $ t

digits :: (Integral x) => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
