module Kyu6.ModSys (fromNb2Str) where

import Data.List (intercalate)
import Text.Printf (printf)

fromNb2Str :: Integer -> [Integer] -> String
fromNb2Str n xs
  | product xs > n && pairwiseCoPrime xs = printf "-%s-" . intercalate "--" . map (show . (\x -> n `mod` x)) $ xs
  | otherwise = "Not applicable"
  where
    pairwiseCoPrime [] = True
    pairwiseCoPrime (x : xs) = all (\y -> gcd x y == 1) xs && pairwiseCoPrime xs
