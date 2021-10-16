module Kyu7.BasesEverywhere (baseFinder) where

import Data.List (nub)

baseFinder :: [String] -> Int
baseFinder = length . nub . concat
