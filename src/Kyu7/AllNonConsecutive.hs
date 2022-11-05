module Kyu7.AllNonConsecutive (allNonConsecutive) where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

allNonConsecutive :: (Eq a, Enum a, Num a) => [a] -> [(Int, a)]
allNonConsecutive [] = []
allNonConsecutive n = go . zip [0 ..] $ n
  where
    go [] = []
    go [x] = []
    go (x : y : ys)
      | (snd y - snd x) == 1 = go (y : ys)
      | otherwise = (fromJust . elemIndex (snd y) $ n, snd y) : go (y : ys)
