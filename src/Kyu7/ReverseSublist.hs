module Kyu7.ReverseSublist where

import Data.List (groupBy, sort)

revSub :: [Integer] -> [Integer]
revSub = (>>= reverse) . groupBy (\x y -> even x && even y)
