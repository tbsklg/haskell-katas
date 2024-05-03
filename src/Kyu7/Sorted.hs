module Kyu7.Sorted where

import Data.List (sortOn)

sortList :: (Ord b) => (a -> b) -> [a] -> [a]
sortList = sortOn
