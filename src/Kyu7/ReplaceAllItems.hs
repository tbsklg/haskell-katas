module Kyu7.ReplaceAllItems where

replaceAll :: Eq a => [a] -> a -> a -> [a]
replaceAll a o n = map (\x -> if x == o then n else x) a
