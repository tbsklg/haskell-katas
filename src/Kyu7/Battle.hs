module Kyu7.Battle where

import Data.Char (toLower)
import Data.List (elemIndex)

battle :: String -> String -> String
battle a b
  | powerA > powerB = a
  | powerB > powerA = b
  | otherwise = "Tie!"
  where
    powerA = sum $ map powerOf a
    powerB = sum $ map powerOf b

powerOf :: Char -> Int
powerOf a = case elemIndex (toLower a) ['a' .. 'z'] of
  Just x -> x - 1
  Nothing -> 0
