module Kyu7.Diplomas where

diplomas :: Int -> Int -> Int -> Int
diplomas h w n = maxDiplomas h w n 1

maxDiplomas :: (Integral t) => t -> t -> t -> t -> t
maxDiplomas _ _ 0 _ = 0
maxDiplomas h w n s
  | (s `div` h) * (s `div` w) >= n = s
  | otherwise = maxDiplomas h w n (s + 1)
