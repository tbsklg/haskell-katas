module Kyu7.LengthAndTwoValues (alternate) where

alternate :: Int -> a -> a -> [a]
alternate i a b = take i . cycle $ [a, b]
