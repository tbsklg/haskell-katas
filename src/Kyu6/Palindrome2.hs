module Kyu6.Palindrome2 where

palindrome :: Int -> Int -> Maybe [Int]
palindrome x n
  | x < 0 = Nothing
  | otherwise = Just . take n . filter isPalindrome $ [x ..]

isPalindrome :: Int -> Bool
isPalindrome x = x > 9 && show x == reverse (show x)
