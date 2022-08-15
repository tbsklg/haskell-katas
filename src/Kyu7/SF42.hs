module Kyu7.SF42 where

areSimilar :: [Int] -> [Int] -> Bool
areSimilar a b
  | null elems = True
  | otherwise = length elems == 2 && swap (head elems) == elems !! 1
  where
    elems = filter (uncurry (/=)) . zip a $ b

swap :: (b, a) -> (a, b)
swap (x, y) = (y, x)
