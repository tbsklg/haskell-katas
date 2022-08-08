module Kyu7.BinaryString (binStr) where

binStr :: String -> Int
binStr xs
  | containsZerosOnly = 0
  | otherwise = (+) 1 . binStr . map flip . dropWhile (/= '1') $ xs
  where
    containsZerosOnly = null . dropWhile (/= '1') $ xs

    flip '1' = '0'
    flip _ = '1'
