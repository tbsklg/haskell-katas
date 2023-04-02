module Kyu6.Duplicates where

import Data.List ((\\), nub)
import Data.Char (toLower)

duplicateCount :: String -> Int
duplicateCount xs = length . nub . (\\) (map toLower xs) $ (['a' .. 'z'] ++ ['0' .. '9']) 

