module Kyu6.Balance (balance, Comparison(..)) where

import Prelude hiding (Either (..))

data Comparison = Left | Right | Balance deriving (Show, Eq, Enum, Bounded)

balance :: String -> String -> Comparison
balance left right
  | leftWeight > rightWeight = Left
  | leftWeight < rightWeight = Right
  | otherwise                = Balance
  where
    leftWeight  = sum $ map weight left
    rightWeight = sum $ map weight right
    
    weight '!' = 2
    weight '?' = 3
    weight _   = 0

