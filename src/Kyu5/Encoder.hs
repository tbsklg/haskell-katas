module Kyu5.Encoder where

import Data.List (intercalate)

data Encode = IDE | CON | SIN deriving (Show, Eq)

compress :: [Int] -> String
compress = intercalate "," . map print' . foldr sequence []
  where
    sequence x [] = [(x, 1, SIN)]
    sequence x l@((i, c, e) : xs)
      | x == i = (x, c + 1, IDE) : xs
      | otherwise = (x, 1, SIN) : l

    -- consecutives x [] = [x]
    -- consecutives x [z] = [x, z]
    -- consecutives x@(a, 1, SIN) l@((i, c, e) : (i', c', e') : xs)
    --   | abs i' - i == 1 && abs i - a == 1 = (i', a, CON) : xs
    --   | otherwise = x : l
    -- consecutives x@(_, _, _) l = x : l

print' :: (Int, Int, Encode) -> String
print' (a, b, SIN) = show a
print' (a, b, IDE) = show b ++ "*" ++ show a
print' (a, b, CON) = show b ++ "-" ++ show a
