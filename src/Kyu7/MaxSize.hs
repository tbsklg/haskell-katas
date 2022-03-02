module Kyu7.MaxSize where

import Data.List ( sort )

maxProduct :: [Integer] -> Int -> Integer
maxProduct a x = product . take x . reverse . sort $ a

-- maxProduct xs n = product $ take n $ sortOn Down xs
