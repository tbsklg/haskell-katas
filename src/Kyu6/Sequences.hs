module Kyu6.Sequences where

getScore :: Integer -> Integer
getScore n = (n * 50) + (n * (n - 1) * 25)
