module Kyu7.StringsEndsWith (solution) where

solution :: String -> String -> Bool
solution _ "" = True
solution [] _ = False
solution x y = x == y || tail x == y || solution (tail x) y

-- solution :: String -> String -> Bool
-- solution = flip isSuffixOf
