module Kyu7.Numbering where

number :: [String] -> [String]
number s = zipWith (\x y -> x ++ ": " ++ y) (map show [1 .. length s]) s
