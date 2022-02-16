module Kyu7.MinSum where

import Data.List (sort)

minSum :: [Integer] -> Integer
minSum [] = 0
minSum ns = minSum' (sort ns)
  where
    minSum' [] = 0
    minSum' s = head s * last s + minSum' (init . tail $ s)
