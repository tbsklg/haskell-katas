module Kyu7.RangeBitCounting (rangeBitCount) where

rangeBitCount :: Int -> Int -> Int
rangeBitCount a b = sum . map (sum . bins) $ [a .. b]

bins :: (Integral a) => a -> [a]
bins 0 = []
bins n = bins (n `div` 2) ++ [n `mod` 2]
