module Kyu7.MakeAcronym where

import Data.Char (toUpper)

toAcronym :: String -> String
toAcronym = concatMap (\(x : _) -> [toUpper x]) . words
