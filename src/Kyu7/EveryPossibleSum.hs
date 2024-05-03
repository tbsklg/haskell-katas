module Kyu7.EveryPossibleSum (digits) where

digits :: (Integral a) => a -> [a]
digits = go . digits'
  where
    go [] = []
    go (x : xs) = map (x +) xs ++ go xs

digits' :: (Integral a) => a -> [a]
digits' 0 = []
digits' d = digits' (d `div` 10) ++ [d `mod` 10]
