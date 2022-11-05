module Kyu7.Layers where

layers :: Int -> Int
layers = ceiling . (/ 2) . succ . sqrt . fromIntegral
