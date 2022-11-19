module Kyu6.ComputeDepth where

import Data.Char (digitToInt)
import Data.List ((\\))

computeDepth :: Int -> Int
computeDepth n = depth digits [1 ..]
  where
    depth [] (x : _) = x
    depth d (x : xs)
      | null (d \\ show (x * n)) = x + 1
      | otherwise = depth (d \\ show (x * n)) xs
    depth _ _ = 0

    digits = "0123456789"
