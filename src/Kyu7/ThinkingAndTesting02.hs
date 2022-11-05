module Kyu7.ThinkingAndTesting02 where

import Data.Char (chr, ord)

testit :: String -> String
testit "" = ""
testit [x] = [x]
testit (x : y : xs) = chr ((ord x + ord y) `div` 2) : testit xs
