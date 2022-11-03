module Kyu6.ReplaceWithAlphabetPosition (alphabetPosition) where

import Data.Char (isAlpha, isSpace, toLower)

alphabetPosition :: String -> String
alphabetPosition = unwords . map (position . toLower) . filter isLetter . concat . words
  where
    position x = show . (\x -> x - 96) . fromEnum $ x
    isLetter x = x `elem` ['a' .. 'z'] ++ ['A' .. 'Z']
