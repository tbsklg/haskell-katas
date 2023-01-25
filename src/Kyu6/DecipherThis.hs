module Kyu6.DecipherThis where

import Data.Char (chr, isNumber)

decipherThis :: String -> String
decipherThis = unwords . map decipherWord . words

decipherWord :: String -> [Char]
decipherWord word
    | lengthOfWord == 2 = first : [last word]
    | all isNumber word = [chr . read $ word]
    | otherwise = [first] ++ [last word] ++ between ++ [second]
    where
    first = chr . read . takeWhile isNumber $ word
    second = head . dropWhile isNumber $ word
    between
        | null . tail . dropWhile isNumber $ word = []
        | otherwise  = init . tail . dropWhile isNumber $ word
    lengthOfWord = (+) 1 . length . dropWhile isNumber $ word
