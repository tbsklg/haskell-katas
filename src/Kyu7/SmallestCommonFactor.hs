module Kyu7.SmallestCommonFactor where

import Data.List (find)
import Data.Maybe (fromMaybe)

scf :: [Int] -> Int
scf [] = 1
scf xs =
  fromMaybe
    1
    ( find
        (\i -> foldl (\y x -> y && x `mod` i == 0) True xs)
        [2 .. maximum xs]
    )
