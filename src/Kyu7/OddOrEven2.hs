module Kyu7.OddOrEven2 (oddOrEven) where

data Parity = EITHER | EVEN | ODD

oddOrEven :: Word -> Parity
oddOrEven w
  | odd odds && odd evens = ODD
  | even odds && even evens = EVEN
  | otherwise = EITHER
  where
    odds = w `div` 2
    evens = w - odds
