module Kyu7.Parsable where

import Data.Char (isDigit)

parses :: String -> Bool
parses [] = False
parses d@(x : xs)
  | x == '-' = containsOnlyDigits xs
  | otherwise = containsOnlyDigits d
  where
    containsOnlyDigits [] = False
    containsOnlyDigits l = foldl (\y x -> y && isDigit x) True l

-- parses str = (readMaybe str :: Maybe Integer) /= Nothing
