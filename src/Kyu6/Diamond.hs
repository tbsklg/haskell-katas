module Kyu6.Diamond where

import Data.List (elemIndex, intercalate)
import Data.Maybe (fromMaybe)

diamond :: Char -> String
diamond c = intercalate "\n" . map (`line` c) . mirror $ ['A' .. c]

line :: Char -> Char -> String
line 'A' maxLetter = mirror (outerSpaces maxLetter maxLetter ++ "A")
line x maxLetter
  | x == maxLetter = [maxLetter] ++ middleSpaces x ++ [maxLetter]
  | otherwise = outerSpaces x maxLetter ++ [x] ++ middleSpaces x ++ [x] ++ outerSpaces x maxLetter

mirror :: String -> String
mirror x = x ++ (reverse . init $ x)

outerSpaces :: Char -> Char -> String
outerSpaces x maxLetter
  | x == maxLetter = spaces (alphabetPosition maxLetter)
  | otherwise = spaces (alphabetPosition maxLetter - alphabetPosition x)

middleSpaces :: Char -> String
middleSpaces 'A' = []
middleSpaces x = spaces (alphabetPosition x * 2 - 1)

alphabetPosition :: Char -> Int
alphabetPosition x = fromMaybe 0 . elemIndex x $ ['A' .. 'Z']

spaces :: Int -> String
spaces x = replicate x ' '
