module Kyu7.SimpleStrRev where

solve :: String -> Int -> Int -> String
solve xs a b = start ++ middle ++ end
  where
    start = take a xs
    middle = reverse . take (b - a + 1) . drop a $ xs
    end = drop (b + 1) xs
