module Kyu7.Partial where

import Data.Char (toLower)
import Data.List (isInfixOf)

wordSearch :: String -> [String] -> Maybe [String]
wordSearch query seq
  | null result = Nothing
  | otherwise = Just result
  where
    lowerQuery = map toLower query
    result = filter (isInfixOf lowerQuery . map toLower) seq
