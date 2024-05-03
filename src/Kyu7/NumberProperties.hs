module Kyu7.NumberProperties where

data Property = Property Bool Bool Bool deriving (Show, Eq)

--                       prime  even  10*

numberProperty :: (Integral n) => n -> Property
numberProperty n = Property (isPrime n) (even n) (n `mod` 10 == 0)

isPrime :: (Integral a) => a -> Bool
isPrime i = i > 1 && all (\x -> i `mod` x > 0) [2 .. (i - 1)]
