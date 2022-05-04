module Kyu7.SortByLastCharacter (sortMe) where

import Data.List (sortOn)

sortMe :: [String] -> [String]
sortMe = sortOn last
