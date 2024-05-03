module Kyu6.FormatSentence where

import Data.List (intercalate)

formatWords :: [String] -> String
formatWords xs = format . filter (/= "") $ xs
  where
    format [] = []
    format [x] = x
    format xs = (intercalate ", " . init $ xs) ++ " and " ++ last xs
