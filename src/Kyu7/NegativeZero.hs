module Kyu7.NegativeZero where

negativeZero :: Float -> Bool
negativeZero = (==) (show (-0.0)) . show

-- isNegativeZero a
