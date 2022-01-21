module Kyu7.Spinning where

import Data.List (reverse)

spinWords :: String -> String
spinWords = unwords . map (\x -> if (<) 4 . length $ x then reverse x else x) . words