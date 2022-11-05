module Kyu7.SeqList where

seqlist :: Int -> Int -> Int -> [Int]
seqlist a b c = take c [a, (a + b) ..]
