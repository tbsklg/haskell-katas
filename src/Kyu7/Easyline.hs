module Kyu7.Easyline where

easyLine :: Integer -> Integer
easyLine n = (+) 1 . sum $ map (squaredBinCoeff n) [1 .. n]

squaredBinCoeff :: Integral p => p -> p -> p
squaredBinCoeff n k = (factorial n `div` (factorial k * factorial (n - k))) ^ 2

factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1
factorial n = n * factorial (n - 1)
