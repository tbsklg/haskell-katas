module Kyu7.Collatz where

collatz :: Integer -> Int
collatz n
  | n == 1 = 1
  | otherwise = (+) 1 . collatz . calc $ n

calc :: (Integral a) => a -> a
calc n
  | even n = n `div` 2
  | otherwise = n * 3 + 1
