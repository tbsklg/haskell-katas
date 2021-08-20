module Kyu7.RemoveDuplicateWords where 

import Data.List (nub)

removeDuplicateWords :: String -> String
removeDuplicateWords = unwords . nub . words
