module Kyu7.InvisibleCubes where

notVisibleCubes :: Integer -> Integer
notVisibleCubes 0 = 0
notVisibleCubes 1 = 0
notVisibleCubes 2 = 0
notVisibleCubes n = (n - 2) ^ 3
