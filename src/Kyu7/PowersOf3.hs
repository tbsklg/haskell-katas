module Kyu7.PowersOf3 (largestPower) where

largestPower :: Integer -> Int
largestPower x = flip (-) 1 . length . takeWhile (< x). map (3 ^) $ [0 .. ]
