module Kyu6.PermutePalindrome (permutePalindrome) where

import Data.List (group, sort)

permutePalindrome :: String -> Bool
permutePalindrome = (<= 1) . length . filter odd . map length . group . sort
