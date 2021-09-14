module Kyu7.Vaporcode where

import Data.Char ( toUpper )

vaporcode :: String -> String
vaporcode x = vaporize $ trim x
  where
    vaporize [x] = [toUpper x]
    vaporize (x : xs) = [toUpper x] ++ "  " ++ vaporcode xs

trim :: String -> String
trim = filter (/= ' ')

-- vaporcode = intercalate "  " . map (pure . toUpper) . concat . words
