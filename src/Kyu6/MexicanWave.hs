module Kyu6.MexicanWave where

import Data.Char (toUpper)

wave :: String -> [String]
wave xs = createWave [0 .. length xs - 1]
  where
    createWave [] = []
    createWave (i : is)
      | letter == ' ' = createWave is
      | otherwise = (preLetter ++ [toUpper letter] ++ postLetter) : createWave is
      where
        preLetter = take i xs
        letter = (!! max 0 i) xs
        postLetter = drop (i + 1) xs
