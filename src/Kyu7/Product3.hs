module Kyu7.Product3 where

product' :: [Integer] -> Maybe Integer
product' [] = Nothing
product' xs = Just . foldl (*) 1 $ xs
