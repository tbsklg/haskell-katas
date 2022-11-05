module Kyu7.DaysRepresented where

import Data.List (nub)

daysRepresented :: [(Int, Int)] -> Int
daysRepresented = length . nub . concatMap (\x -> [fst x .. snd x])
