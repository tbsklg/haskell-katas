module Kyu7.LengthRecursively where

lenR :: [a] -> Int
lenR = foldl (\y _ -> y + 1) 0
