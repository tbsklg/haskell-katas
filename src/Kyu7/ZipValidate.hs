module Kyu7.ZipValidate where

import Data.Char (isDigit)

zipValidate :: String -> Bool
zipValidate "" = False
zipValidate p@(x : xs)
  | not . (==) 6 . length $ p = False
  | x == '0' || x == '5' || x == '7' || x == '8' || x == '9' = False
  | otherwise = foldl (\y x -> y && isDigit x) True p

--   | any (not . isDigit) xs = False
