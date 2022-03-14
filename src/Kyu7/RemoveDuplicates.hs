module Kyu7.RemoveDuplicates where

import Data.List (nub)

unique :: Eq a => [a] -> [a]
unique = nub
