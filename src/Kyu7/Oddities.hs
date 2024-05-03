module Kyu7.Oddities where

noOdds :: (Integral n) => [n] -> [n]
noOdds = filter even
