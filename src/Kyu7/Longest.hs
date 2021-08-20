module Kyu7.Longest where

import Data.List (nub, sort)

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = sort . nub $ s1 ++ s2
