module Kyu7.FizzBuzz (fizzbuzz) where

fizzbuzz :: Int -> [String]
fizzbuzz i = map fizzBuzz' [1 .. i]
  where
    fizzBuzz' n
      | n `mod` 15 == 0 = "FizzBuzz"
      | n `mod` 3 == 0 = "Fizz"
      | n `mod` 5 == 0 = "Buzz"
      | otherwise = show n
