module Kyu6.TheWheat where

import Data.Foldable
import Data.Sequence (Seq (..), fromList, singleton)

wheatFromChaff :: [Int] -> [Int]
wheatFromChaff = toList . treat . fromList

treat Empty = Empty
treat (x :<| Empty) = singleton x
treat ((x :<| xs) :|> y)
  | x < 0 = x :<| treat (xs :|> y)
  | y > 0 = treat (x :<| xs) :|> y
  | otherwise = (y :<| treat xs) :|> x
