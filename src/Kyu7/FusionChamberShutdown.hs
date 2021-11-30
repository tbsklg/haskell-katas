module Kyu7.FusionChamberShutdown where

burner :: Int -> Int -> Int -> (Int, Int, Int)
burner c h o = (h2o, co2, ch4)
    where
        h2o = water h o
        co2 = carbon c (o - h2o)
        ch4 = methan (h - 2 * h2o) (c - co2)

carbon :: Integral p => p -> p -> p
carbon c o
    | c > o `div` 2 = o `div` 2
    | otherwise = c

water :: Integral p => p -> p -> p
water h o 
    | o > h `div` 2 = h `div` 2
    | otherwise = o

methan :: Integral p => p -> p -> p
methan h c
    | c > h `div` 4 = h `div` 4
    | otherwise = c
