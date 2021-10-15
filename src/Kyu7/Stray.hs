module Kyu7.Stray (stray) where

import Data.List (group, sort)

stray :: [Int] -> Int
stray i = head $ head $ filter (\x -> length x == 1) (group (sort i))

-- stray = foldr1 xor
