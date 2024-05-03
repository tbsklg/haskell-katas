module Kyu6.RPN where

calc :: String -> Double
calc xs = go (words xs) []
  where
    go [] [] = 0
    go [] [x] = x
    go ("+" : xs) (x : y : ys) = go xs ((x + y) : ys)
    go ("-" : xs) (x : y : ys) = go xs ((y - x) : ys)
    go ("*" : xs) (x : y : ys) = go xs ((x * y) : ys)
    go ("/" : xs) (x : y : ys) = go xs ((y / x) : ys)
    go (x : xs) stack = go xs ((read x :: Double) : stack)
