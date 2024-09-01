module Kyu7.CalculateParityBit (checkParity) where

checkParity :: String -> String -> Int
checkParity "even" = (`mod` 2) . length . filter (== '1')
checkParity "odd" = (`mod` 2) . (1+) . length . filter (== '1')
checkParity _ = error "Invalid parity type"
