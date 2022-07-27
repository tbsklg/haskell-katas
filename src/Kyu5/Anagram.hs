module Kyu5.Anagram where

import Data.List (sort)

anagrams :: String -> [String] -> [String]
anagrams w = filter ((==) sortedWord . sort)
  where
    sortedWord = sort w
