module Kyu7.Palindrome where

palindrome :: Integer -> Maybe Bool
palindrome i
  | i < 0 = Nothing
  | otherwise = Just $ show i == (reverse . show $ i)
