module Kyu7.Append where

append :: [a] -> [a] -> [a]
append = foldl (\y x -> y ++ [x])
