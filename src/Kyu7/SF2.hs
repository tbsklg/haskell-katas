module Kyu7.SF2 where

circleOfNumbers :: Int -> Int -> Int
circleOfNumbers n f
  | f >= half = f - half
  | otherwise = f + half
  where
    half = n `div` 2
