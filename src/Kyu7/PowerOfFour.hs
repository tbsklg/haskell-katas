module Kyu7.PowerOfFour where

isPowerOf4 :: (Integral n) => n -> Bool
isPowerOf4 n = (==) n . head . dropWhile (< n) . map (4 ^) $ [0 ..]
