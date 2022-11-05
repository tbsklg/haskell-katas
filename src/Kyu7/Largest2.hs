module Kyu7.Largest2 where

import Data.List (sort)

maxNumber :: Int -> Int
maxNumber i = read (concatMap show . reverse . sort . map (\x -> read [x] :: Int) . show $ i) :: Int
