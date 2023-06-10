module Kyu6.Collatz where

collatz :: Int -> String
collatz n | n == 1 = "1"
collatz n | even n = show n ++ "->" ++ collatz (n `div` 2)
collatz n = show n ++ "->" ++ collatz (n * 3 + 1)
