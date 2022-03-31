module Kyu7.Retsec where

reverseByCenter :: String -> String
reverseByCenter "" = ""
reverseByCenter [x] = [x]
reverseByCenter xs
  | even . length $ xs = last ++ first
  | otherwise = tail last ++ [xs !! middle] ++ first
  where
    middle = length xs `div` 2
    first = take middle xs
    last = drop middle xs
