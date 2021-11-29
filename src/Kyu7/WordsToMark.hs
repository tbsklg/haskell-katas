module Kyu7.WordsToMark (wordsToMarks) where

import Data.Char (ord)

wordsToMarks :: String -> Int
wordsToMarks = sum . map (\x -> ord x - 96)
