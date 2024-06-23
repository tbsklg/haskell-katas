module Kyu7.ReverseSublist where

import Data.List (groupBy, sort)

revSub :: [Integer] -> [Integer]
revSub xs = groupBy (\x y -> even x && even y) xs >>= reverse
