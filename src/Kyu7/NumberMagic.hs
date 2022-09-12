module Kyu7.NumberMagic where

import Data.IntMap (mapMaybe)
import Data.List (nub)

next :: Integer -> Maybe Integer
next n = case [x | x <- [n .. 9999999999], digitOccursOnce x, odd x, x `mod` 3 == 0] of
    [] -> Nothing
    a -> Just . head $ a

digitOccursOnce :: Integer -> Bool
digitOccursOnce i = (==) (show i) . nub . show $ i