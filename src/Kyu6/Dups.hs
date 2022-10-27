module Kyu6.Dups where

import Data.Char (toLower)
import Data.List (group, sort)
import Data.Maybe (fromJust)

duplicateEncode :: String -> String
duplicateEncode s = go asLowercase
  where
    go [] = ""
    go (x : xs)
      | (<) 1 . fromJust . lookup x $ counts = ')' : go xs
      | otherwise = '(' : go xs

    counts = map (\x -> (head x, length x)) . group . sort $ asLowercase
    asLowercase = map toLower s
