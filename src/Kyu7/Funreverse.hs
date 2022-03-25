module Kyu7.Funreverse where

reverseFun :: String -> String
reverseFun [] = []
reverseFun [x] = [x]
reverseFun s = [last s] ++ [head s] ++ reverseFun (init . tail $ s)
