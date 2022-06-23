module Kyu7.Ball where

bouncingBall :: Double -> Double -> Int
bouncingBall h p = incrementWhile (>1) . iterate (* p) $ h

incrementWhile :: (a -> Bool) -> [a] -> Int
incrementWhile _ [] = 0
incrementWhile f (x:xs)
    | f x = 1 + incrementWhile f xs
    | otherwise = 0
