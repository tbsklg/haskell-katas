module Kyu6.Compare where

import Data.List ((\\))

comp :: [Integer] -> [Integer] -> Bool
comp as bs = length as == length bs && null (squared \\ bs)
 where
  squared = map (\x -> x * x) as

