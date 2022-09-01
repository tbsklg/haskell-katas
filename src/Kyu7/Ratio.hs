module Kyu7.Ratio where

import Text.Printf ( printf )

showRatio :: Int -> Int -> Maybe String
showRatio a b = Just . printf "%d:%d" (a `div` ratio) $ (b `div` ratio)
    where
        ratio = gcd a b
