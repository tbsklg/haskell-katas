module Kyu6.StringArrRevisal where

import Data.List (group)

dup :: [String] -> [String]
dup = map (map head . group)
