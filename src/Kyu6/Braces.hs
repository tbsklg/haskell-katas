module Kyu6.Braces where

validBraces :: String -> Bool
validBraces xs = validBraces' xs []
  where
    validBraces' [] [] = True
    validBraces' ('(':xs) ys = validBraces' xs (')':ys)
    validBraces' ('[':xs) ys = validBraces' xs (']':ys)
    validBraces' ('{':xs) ys = validBraces' xs ('}':ys)
    validBraces' (x:xs) (y:ys) | x == y = validBraces' xs ys
    validBraces' _ _ = False

