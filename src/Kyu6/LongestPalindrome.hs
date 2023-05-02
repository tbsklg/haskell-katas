module Kyu6.LongestPalindrome where

import Data.List (inits, tails)

longestPalindrome :: Eq a => [a] -> Int
longestPalindrome [] = 0
longestPalindrome xs = maximum . map length . filter isPalindrome . concatMap tails . inits $ xs
 where
  isPalindrome xs = reverse xs == xs 
