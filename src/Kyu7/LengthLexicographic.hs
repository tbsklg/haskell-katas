module Kyu7.LengthLexicographic where

newtype LengthList a = LengthList [a]
  deriving (Show, Eq)

instance Ord a => Ord (LengthList a) where
  compare (LengthList a) (LengthList b)
    | length a < length b = LT
    | length a > length b = GT
    | otherwise = Prelude.compare a b
