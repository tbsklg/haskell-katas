module Kyu7.SF3 where

lateRide :: Int -> Int
lateRide a = sum $ digits hrs ++ digits min
  where
    hrs = a `div` 60
    min = a `mod` 60

digits :: (Integral a) => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
