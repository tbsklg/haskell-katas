module Kyu7.Odder (oddOne) where

import Data.Foldable (minimumBy)
import Data.Function (on)

oddOne :: [Int] -> Int
oddOne xs
  | null odds = -1
  | otherwise = fst . minimumBy (compare `on` snd) $ odds
  where
    odds = filter (\(x, y) -> odd y) . zip [0 ..] $ xs
