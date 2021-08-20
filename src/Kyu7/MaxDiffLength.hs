module Kyu7.MaxDiffLength where

mxdiflg :: [String] -> [String] -> Maybe Int
mxdiflg [] [] = Nothing
mxdiflg _ [] = Nothing
mxdiflg [] _ = Nothing
mxdiflg x y = Just (maximum (compare x y))
  where
    compare [] [] = []
    compare [] _ = []
    compare (_ : xs) [] = compare xs y
    compare (x : xs) (y : ys) = diffLength x y : compare (x : xs) ys

diffLength :: String -> String -> Int
diffLength x y = abs (length x - length y)
