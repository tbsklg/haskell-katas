module Kyu6.KeypadEntry where

import Data.List (elemIndex, find)
import Data.Maybe (fromMaybe)

presses :: String -> Int
presses = sum . map (press keypad)
  where
    press keypad x = case find (elem x) keypad of
      Nothing -> 0
      Just row -> (+) 1 . fromMaybe 0 . elemIndex x $ row

keypad =
  [ "1",
    "ABC2",
    "DEF3",
    "GHI4",
    "JKL5",
    "MNO6",
    "PQRS7",
    "TUV8",
    "WXYZ9",
    "*",
    " 0",
    "#"
  ]
