module Kyu7.Multiples where

multiples :: Int -> Double -> [Double]
multiples n i = take n . map (i *) $ [1 ..]
