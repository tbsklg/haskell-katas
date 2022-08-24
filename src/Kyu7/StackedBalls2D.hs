module Kyu7.StackedBalls2D (stack) where

stack :: Int -> Double
stack 0 = 0
stack 1 = 1
stack n = sqrt ((y n ^ 2) - (x n ^ 2)) + 1

x :: Int -> Double
x n = [0.5, 1 ..] !! (n - 2)

y :: Int -> Double
y n = fromIntegral n - 1
