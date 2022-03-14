module Kyu7.CaseSwapping where
import Data.Char (isUpper, toLower, toUpper)

swap :: String -> String
swap [] = ""
swap (x:xs)
    | isUpper x = toLower x : swap xs
    | otherwise = toUpper x : swap xs
