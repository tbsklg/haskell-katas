module Kyu6.Narcissistic where

narcissistic :: (Integral n) => n -> Bool
narcissistic n = (==) n . sum . map (^ l) $ d
  where
    d = digits n
    l = length d

digits :: (Integral a) => a -> [a]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]
