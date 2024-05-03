module Kyu6.Palindrome where

import Data.Char (digitToInt)

palindrome :: Integer -> Maybe Bool
palindrome i
  | i < 0 = Nothing
  | otherwise = Just . foldl (\y x -> y || (isPalindrome . drop x $ digits)) False $ [0 .. length digits - 1]
  where
    isPalindrome [x] = False
    isPalindrome xs = xs == reverse xs || isPalindrome (init xs)
    digits = map digitToInt . show $ i
