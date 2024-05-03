module Kyu6.TenMinuteWalk where

isValidWalk :: [Char] -> Bool
isValidWalk = go 0 0 0
  where
    go dX dY 10 [] = dX == 0 && dY == 0
    go dX dY 10 _ = False
    go dX dY p ('n' : xs) = go dX (dY + 1) (p + 1) xs
    go dX dY p ('s' : xs) = go dX (dY - 1) (p + 1) xs
    go dX dY p ('w' : xs) = go (dX - 1) dY (p + 1) xs
    go dX dY p ('e' : xs) = go (dX + 1) dY (p + 1) xs
    go _ _ _ _ = False
