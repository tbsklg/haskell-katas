module Kyu7.BinaryScore where

score :: Integer -> Integer
score 0 = 0
score n = head . dropWhile (< n) . scanl1 (+) . map (2 ^) $ [0 ..]
