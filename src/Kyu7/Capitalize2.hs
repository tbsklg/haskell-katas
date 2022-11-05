module Kyu7.Capitalize2 where

import Data.Char (toUpper)

capitalize :: String -> [Int] -> String
capitalize s i = zipWith (\index s -> (if index `elem` i then toUpper s else s)) [0 ..] s
