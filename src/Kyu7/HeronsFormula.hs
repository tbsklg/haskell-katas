module Kyu7.HeronsFormula where

heron :: Floating a => a -> a -> a -> a
heron a b c = sqrt $ s * (s - a) * (s - b) * (s - c)
  where
    s = (a + b + c) / 2
