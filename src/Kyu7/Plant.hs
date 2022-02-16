module Kyu7.Plant where

growingPlant :: Int -> Int -> Int -> Int
growingPlant u d t = (+) 1 . length . takeWhile (< t) . iterate (\x -> x + u - d) $ u
