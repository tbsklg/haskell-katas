module Kyu7.FindAB where

import Data.List ( nub )

findAB :: [Int] -> Int -> Maybe (Int, Int)
findAB xs i
  | null matches = Nothing
  | otherwise = Just . head $ matches
  where
    matches = filter (\(x, y) -> x * y == i) . perms $ xs

perms :: Eq b => [b] -> [(b, b)]
perms [] = []
perms l = nub . go $ l
    where
        go [] = []
        go (x:xs) = map (\y -> (x, y)) xs ++ go xs
 