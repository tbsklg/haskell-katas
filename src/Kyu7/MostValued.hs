module Kyu7.MostValued where

import Data.List (elemIndices, groupBy, nub, sort, sortBy, sortOn)

solve :: String -> Char
solve l
  | null values = minimum l
  | otherwise = last values
  where
    values =
      map snd
        . filter (\(c, _) -> c /= 0)
        . nub
        . sortBy mostValuable
        . map value
        $ l
    value x = (distance . elemIndices x $ l, x)
    distance l = maximum l - minimum l

mostValuable :: (Ord a1, Ord a2) => (a2, a1) -> (a2, a1) -> Ordering
mostValuable (c, a) (c', b)
  | c == c' = alpha a b
  | c < c' = LT
  | otherwise = GT

alpha :: (Ord a) => a -> a -> Ordering
alpha a b
  | a < b = GT
  | otherwise = LT

-- solve :: String -> Char
-- solve xs = snd $ minimum $ map charVal xs
--   where charVal x = (liftA2 (-) head last (elemIndices x xs), x)
