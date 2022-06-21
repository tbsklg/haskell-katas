module Kyu7.Product4 where

-- | Takes a square matrix and returns the product of all 
--   diagonal entries.
mainDiagonalProduct :: Num a => [[a]] -> a
mainDiagonalProduct = product . zipWith (\i r -> r !! i) [0 ..]
