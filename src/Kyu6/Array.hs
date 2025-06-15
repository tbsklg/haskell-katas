module Kyu6.Array (upArray) where

import Data.Char

upArray :: [Int] -> Maybe [Int]
upArray [] = Nothing
upArray digits
  | not (isValidArray digits) = Nothing
  | otherwise = Just $ addOne (reverse digits) []
  where
    isValidArray :: [Int] -> Bool
    isValidArray = all (\x -> x >= 0 && x <= 9)
    
    addOne :: [Int] -> [Int] -> [Int]
    addOne [] carry = 1 : carry
    addOne (d:ds) carry
      | d < 9 = reverse ((d+1):ds) ++ carry
      | otherwise = addOne ds (0:carry)
