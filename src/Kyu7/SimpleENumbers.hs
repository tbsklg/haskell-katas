module Kyu7.SimpleENumbers where

solve :: Int -> Int -> Int
solve a b = length . filter eviternity $ [a .. b]

eviternity :: (Integral a) => a -> Bool
eviternity 0 = False
eviternity x = valid && eight >= five && five >= three
  where
    valid = all (\x -> x `elem` [8, 5, 3]) . digits $ x

    eight = length . filter (== 8) . digits $ x
    five = length . filter (== 5) . digits $ x
    three = length . filter (== 3) . digits $ x

digits :: (Integral a) => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
