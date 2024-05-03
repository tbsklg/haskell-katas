module Kyu7.SimpleReversi where

import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

solve :: Int -> Int -> Int
solve x k = fromMaybe (-1) (elemIndex k . go $ [0 .. (x - 1)])
  where
    go [] = []
    go xs = (:) (last xs) . go . tail . reverse $ xs
