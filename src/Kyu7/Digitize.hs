module Kyu7.Digitize where

digitize :: Integer -> [Integer]
digitize 0 = [0]
digitize n = digits n

digits :: Integral x => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
