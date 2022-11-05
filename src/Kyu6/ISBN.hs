module Kyu6.ISBN (toISBN13) where

import Data.Char (digitToInt, isDigit)

toISBN13 :: String -> String
toISBN13 = withCheckDigit . init . withPrefix

withPrefix :: String -> String
withPrefix = (++) "978-"

withCheckDigit :: String -> String
withCheckDigit s = (++) s . checkDigit $ s

checkDigit :: String -> String
checkDigit =
  show
    . checkDigit'
    . flip mod 10
    . sum
    . zipWith (*) (cycle [1, 3])
    . map digitToInt
    . filter isDigit
    . show
  where
    checkDigit' 0 = 0
    checkDigit' x = 10 - x
