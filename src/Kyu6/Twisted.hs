module Kyu6.Twisted where

import Data.List (sortOn)

sortTwisted37 :: [Int] -> [Int]
sortTwisted37 arr = map fst . sortOn snd $ zip arr (map twist arr)
  where
    twist :: Int -> Int
    twist = read . map twist' . show
    
    twist' :: Char -> Char
    twist' '3' = '7'
    twist' '7' = '3'
    twist' x = x

