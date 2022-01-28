module Kyu7.SumOfMinimums (sumOfMinimums) where

sumOfMinimums :: (Num a, Ord a) => [[a]] -> a
sumOfMinimums = sum . map minimum