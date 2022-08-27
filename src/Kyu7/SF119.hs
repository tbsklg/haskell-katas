module Kyu7.SF119 where

passTheBill :: Int -> Int -> Int -> Int
passTheBill m c r = case filter (\v -> c + v > r + (i - v)) [0 .. i] of
  [] -> (-1)
  a -> head a
  where
    i = m - c - r
