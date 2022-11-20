module Kyu6.SupermarketQueue (queueTime) where

queueTime :: [Int] -> Int -> Int
queueTime [] _ = 0
queueTime [x] _ = x
queueTime xs n = minOfN + queueTime next n
  where
    minOfN = minimum . take n $ xs
    next = (++) (filter (/= 0) . map (\x -> x - minOfN) . take n $ xs) (drop n xs)
