module Kyu7.Palindromes where

nextPal :: Int -> Int
nextPal n = head . map read . dropWhile (not . isPalidrom) . map show $ [n + 1 ..]
  where
    isPalidrom x = (==) x . reverse $ x
