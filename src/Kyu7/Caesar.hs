module Kyu7.Caesar where

import Data.Char (isAlpha, toLower, toUpper)

caeser :: String -> Int -> String
caeser xs i = map shift xs
  where
    shift x
      | toLower x `elem` ['a' .. 'z'] = toUpper . toEnum . (+) 97 . (\x -> (x + i - 97) `mod` 26) . fromEnum . toLower $ x
      | otherwise = x
