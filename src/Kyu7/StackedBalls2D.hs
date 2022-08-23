module Kyu7.StackedBalls2D (stack) where

stack :: Int -> Double
stack n = sqrt ((y n ^ 2) - (x n ^ 2))

x :: Int -> Double
x n = [0.5, 1 ..] !! n

y :: Int -> Double
y n = fromIntegral n - 1
