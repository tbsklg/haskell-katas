module Kyu7.FillTheHDD (save) where

save :: (Num a, Ord a) => [a] -> a -> Int
save s c = length . takeWhile (<= c) $ scanl1 (+) s
