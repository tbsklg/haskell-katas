module Kyu7.Comparator where

matchList :: (Eq a) => [a] -> [a] -> Int
matchList xs ys = length [x | x <- xs, x `elem` ys]
