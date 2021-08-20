module Kyu7.EvenNumbers where

evenNumbers :: [Int] -> Int -> [Int]
evenNumbers xs n = drop (length allEvenNumbers - n) allEvenNumbers
  where
    allEvenNumbers = filter even xs
