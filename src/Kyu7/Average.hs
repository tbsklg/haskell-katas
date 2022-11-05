module Kyu7.Average where

avgArray :: [[Int]] -> [Double]
avgArray [] = []
avgArray ([] : _) = []
avgArray xs = avg : avgArray next
  where
    avg = flip (/) (fromIntegral . length $ xs) . fromIntegral . sum . map head $ xs
    next = map tail xs

-- transpose
