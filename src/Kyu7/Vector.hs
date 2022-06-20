module Kyu7.Vector (vectorLength) where

vectorLength :: [[Double]] -> Double
vectorLength [[x, y], [x', y']] = sqrt ((x - x') ^ 2 + (y - y') ^ 2)
vectorLength _ = 0
