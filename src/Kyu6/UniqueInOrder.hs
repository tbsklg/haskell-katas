module Kyu6.UniqueInOrder (uniqueInOrder) where

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []
uniqueInOrder (x:xs) = x : (uniqueInOrder . dropWhile (==x) $ xs)
