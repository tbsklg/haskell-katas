module Kyu7.SpinningRings (spinningRings) where

spinningRings :: Int -> Int -> Int
spinningRings i o = (+) 1 . length . takeWhile (/= 0) . zipWith (-) (cycle [i, (i - 1) .. 0]) $ (drop 1 . cycle $ [0 .. o])
