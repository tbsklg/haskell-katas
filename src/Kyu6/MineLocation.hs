module Kyu6.MineLocation where

import Data.Array (Array, assocs)
import Data.List (elemIndex, find)
import Data.Maybe (fromMaybe)

mineLocation :: Array (Int, Int) Int -> Maybe (Int, Int)
mineLocation xs = case find (\(_, val) -> val == 1) . assocs $ xs of
  Nothing -> Nothing
  Just ((x, y), _) -> Just (x, y) 
