module Kyu7.NumberStar where

import Data.List (intercalate)

pattern :: Int -> String
pattern 1 = "1"
pattern n = "1\n" ++ (intercalate "\n" . tail $ ['1' : replicate (x - 1) '*' ++ show x | x <- [1 .. n]])
