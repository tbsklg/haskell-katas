module Kyu7.DivisibleByThree where

divisibleByThree :: String -> Bool
divisibleByThree = (==) 0 . flip mod 3 . read
