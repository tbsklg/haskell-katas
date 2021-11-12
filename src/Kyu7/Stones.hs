module Kyu7.Stones (solution) where

import Data.List (group)

solution :: String -> Int
solution = foldl (\x y -> x + (length y - 1)) 0 . group
