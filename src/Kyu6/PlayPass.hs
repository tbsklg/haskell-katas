module Kyu6.PlayPass where

import Data.Char (digitToInt, intToDigit, isAlpha, isDigit, toLower, toUpper)

playPass :: String -> Int -> String
playPass xs s = reverse . phrase . zip [0 ..] $ xs
 where
  phrase [] = []
  phrase ((i, x) : xs)
    | isDigit x = handleDigit x : phrase xs
    | isAlpha x = handleAlpha (i, x) s : phrase xs
    | otherwise = x : phrase xs

  handleAlpha :: (Int, Char) -> Int -> Char
  handleAlpha (i, x) s | even i = toUpper . shift s $ x
  handleAlpha (_, x) s = toLower . shift s $ x

  handleDigit :: Char -> Char
  handleDigit x = intToDigit . complementOfNine . digitToInt $ x

  complementOfNine n = 9 - n

  shift 0 c = c
  shift n 'z' = shift (n -1) 'a'
  shift n 'Z' = shift (n -1) 'A'
  shift n c = shift (n -1) (succ c)
