module Kyu7.Powers (powers) where

powers :: Int -> [Int]
powers = map (\(i,_) -> 2 ^ i) . filter(\(_,x) -> x /= 0) . zip [0 ..] . reverse . bin

bin :: Integral a => a -> [a]
bin 0 = []
bin x = bin (x `div` 2) ++ [x `mod` 2]
