module Kyu7.Kata where

import Data.Char (isAlpha, isDigit)

countLettersAndDigits :: String -> Int
countLettersAndDigits = length . filter (\x -> isAlpha x || isDigit x)

-- isAlphaNum
