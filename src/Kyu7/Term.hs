module Kyu7.Term where

nthterm :: Int -> Int -> Int -> Int
nthterm f n c = (!! max 0 n) [f, f + c .. ]
