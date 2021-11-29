module Kyu7.MaxMult where

maxMultiple :: Int -> Int -> Int
maxMultiple i j = last . takeWhile (<= j) . map (* i) $ [1 ..]
