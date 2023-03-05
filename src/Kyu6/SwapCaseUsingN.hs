module Kyu6.SwapCaseUsingN (swap) where

import Data.Char (toLower, toUpper, isLower, isUpper, isAlpha)

swap :: String -> Int -> String
swap xs i = swapCase (cycle . toBinary $ i) xs
    where
        swapCase _ [] = []
        swapCase bs (' ':xs) = ' ' : swapCase bs xs
        swapCase (1:bs) (x:xs)
            | isUpper x = toLower x : swapCase bs xs
            | isLower x = toUpper x : swapCase bs xs
            | otherwise = x : swapCase (1:bs) xs
        swapCase (b:bs) (x:xs)
            | isAlpha x = x : swapCase bs xs
            | otherwise = x : swapCase (b:bs) xs
        swapCase _ _ = []

toBinary :: Integral a => a -> [a]
toBinary 0 = []
toBinary i = toBinary (i `div` 2) ++ [i `mod` 2]