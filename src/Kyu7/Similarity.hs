module Kyu7.Similarity where

import Data.List (intersect, union)

similarity :: ([Int], [Int]) -> Double
similarity (a, b) = i / u
  where
    i = fromIntegral . length . intersect a $ b
    u = fromIntegral . length . union a $ b
