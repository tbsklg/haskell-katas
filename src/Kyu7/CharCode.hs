module Kyu7.CharCode where

import Data.Char (ord, toUpper)

calc :: String -> Int
calc x = total1 x - total2 x

total1 :: [Char] -> Int
total1 s = sum . map (\x -> read [x] :: Int) $ asAscii s

total2 :: [Char] -> Int
total2 s = sum . map (\x -> if x == '7' then 1 else read [x] :: Int) $ asAscii s

asAscii :: [Char] -> String
asAscii = concatMap (show . ord)

-- calc x = sum [6 | i <- concatMap (show . ord) x, i == '7']
