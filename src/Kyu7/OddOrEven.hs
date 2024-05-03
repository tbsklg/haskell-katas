module Kyu7.OddOrEven where

oddOrEven :: (Integral a) => [a] -> [Char]
oddOrEven [] = even'
oddOrEven l
  | even (sum l) = even'
  | otherwise = odd'

odd' :: [Char]
odd' = "odd"

even' :: [Char]
even' = "even"
