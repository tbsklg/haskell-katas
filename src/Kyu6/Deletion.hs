module Kyu6.Deletion where

import Data.Function (on)
import Data.List (groupBy, sortOn)

deleteNth :: [Int] -> Int -> [Int]
deleteNth xs n =
  map snd
    . sortOn fst
    . concatMap (take n)
    . groupBy ((==) `on` snd)
    . sortOn snd
    . zip [0 ..]
    $ xs
