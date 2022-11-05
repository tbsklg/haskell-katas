module Kyu7.CreateArrayOfTiers where

createArrayOfTiers :: Int -> [String]
createArrayOfTiers = tail . scanl (\x y -> x ++ [y]) [] . show
