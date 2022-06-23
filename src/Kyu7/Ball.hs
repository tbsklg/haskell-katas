module Kyu7.Ball where

bouncingBall :: Double -> Double -> Int
bouncingBall h p = length . takeWhile (>1) . iterate (* p) $ h
