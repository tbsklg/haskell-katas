module Kyu6.RemoveTheParentheses (removeParentheses) where

removeParentheses :: String -> String
removeParentheses xs = go xs []
    where
        go [] [] = ""
        go (')':xs) s@(')':ys) = go xs ys
        go ('(': xs) s = go xs (')' : s)
        go (x:xs) s@(')':ys) = go xs s
        go (x:xs) [] = x : go xs []
        go [] _ = ""
        go _ _ = ""
