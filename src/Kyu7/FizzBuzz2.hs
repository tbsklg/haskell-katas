module Kyu7.FizzBuzz2 where

fizzbuzz :: Int -> [Int]
fizzbuzz n = [a, b, c]
  where
    a = length . filter (\x -> x `mod` 3 == 0 && x `mod` 5 /= 0) $ [1 .. (n - 1)]
    b = length . filter (\x -> x `mod` 5 == 0 && x `mod` 3 /= 0) $ [1 .. (n - 1)]
    c = length . filter (\x -> x `mod` 15 == 0) $ [1 .. (n - 1)]
