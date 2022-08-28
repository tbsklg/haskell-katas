module Kyu7.Multiples2 where

import Data.List (find, sort)

findLowestInt :: Int -> Int
findLowestInt i = case find (\x -> equals (x * i) (x * (i + 1))) [i ..] of
  Just a -> a
  _ -> (-1)

equals :: (Show a1, Show a2) => a1 -> a2 -> Bool
equals x y = (sort . show $ x) == (sort . show $ y)
