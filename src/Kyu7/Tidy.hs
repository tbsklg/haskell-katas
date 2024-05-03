module Kyu7.Tidy where

tidyNumber :: Int -> Bool
tidyNumber = tidy . digits
  where
    tidy [] = True
    tidy [_] = True
    tidy (x : y : ys) = x <= y && tidy (y : ys)

digits :: (Integral a) => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
