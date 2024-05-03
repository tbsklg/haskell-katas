module Kyu6.SimpleEncryption where

encryptThis :: String -> String
encryptThis = unwords . map encrypt . words
  where
    encrypt :: String -> String
    encrypt [] = []
    encrypt [x] = show (fromEnum x)
    encrypt [x, y] = show (fromEnum x) ++ [y]
    encrypt (x : y : xs) = show (fromEnum x) ++ [last xs] ++ init xs ++ [y]
