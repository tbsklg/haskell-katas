module Kyu7.SillyCASE where

import Data.Char (toLower, toUpper)

sillyCASE :: String -> String
sillyCASE xs = f ++ h
  where
    f = map toLower . take n $ xs
    h = map toUpper . drop n $ xs
    n = ceiling ((fromIntegral . length $ xs) / 2)
