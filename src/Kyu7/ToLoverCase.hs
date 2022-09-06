module Kyu7.ToLoverCase where

import Data.Char (isAlpha, isUpper, toLower)
import Data.List (elemIndex)
import Data.Maybe (fromJust)

toLoverCase :: String -> String
toLoverCase = map toLover
  where
    toLover x
      | not . isAlpha $ x = x
      | otherwise = transform . fromJust . elemIndex (toLower x) $ alphabet

    transform i = cycle love !! (i `mod` 4)

love :: [Char]
love = "LOVE"

alphabet :: [Char]
alphabet = ['a' .. 'z']
