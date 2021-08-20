module RemoveDuplicateWords where 

import Data.List (nub)

removeDuplicateWords :: String -> String
removeDuplicateWords = unwords . nub . words
