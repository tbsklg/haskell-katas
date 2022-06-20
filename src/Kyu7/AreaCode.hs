module Kyu7.AreaCode (areaCode) where

areaCode :: String -> String
areaCode = takeWhile (/=')') . tail . dropWhile (/='(')

-- import Data.List.Split (splitOneOf)

-- areaCode :: String -> String
-- areaCode = (!! 1) . splitOneOf "()"
