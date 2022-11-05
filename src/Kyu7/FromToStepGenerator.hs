module Kyu7.FromToStepGenerator where

generator :: Integer -> Integer -> Integer -> [Integer]
generator _ _ 0 = []
generator from to step
  | to > from = [from, from + step .. to]
  | otherwise = [from, from - step .. to]
