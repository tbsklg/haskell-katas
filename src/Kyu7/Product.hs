module Kyu7.Product where

productArray :: [Integer] -> [Integer]
productArray l = map (\x -> product l `div` x) l
