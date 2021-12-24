module Kyu7.DoubleEveryOther (doubleEveryOther) where

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = zipWith (\index value -> (if even index then value else value * 2)) [0 ..]