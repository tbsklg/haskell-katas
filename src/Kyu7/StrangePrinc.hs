module Kyu7.StrangePrinc where

numOpenLockers :: Int -> Int
numOpenLockers l = foldl (\x y -> if odd . numberOfDivs $ y then x + 1 else x ) 0 [1 .. l]

numberOfDivs :: Integral a => a -> Int
numberOfDivs x = length . filter (\n -> x `mod` n == 0) $ [1 .. x]
    