module Kyu6.CompareVersions where

import Data.List.Split (splitOn)

compareVersions :: String -> String -> Ordering
compareVersions version1 version2 = go (splitOn "." version1) (splitOn "." version2)
    where
        go [] [] = EQ
        go [] [_] = LT
        go [_] [] = GT
        go [x] [y] = compare (read x :: Int) (read y :: Int)
        go (x:xs) (y:ys)
            | x == y = go xs ys
            | (read x :: Int) < (read y :: Int) = LT
            | otherwise = GT
        go _ _ = EQ
