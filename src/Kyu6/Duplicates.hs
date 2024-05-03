module Kyu6.Duplicates where

import Data.Char (toLower)
import Data.List (nub, (\\))

duplicateCount :: String -> Int
duplicateCount xs = length . nub . (\\) (map toLower xs) $ (['a' .. 'z'] ++ ['0' .. '9'])
