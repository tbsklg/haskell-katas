module Kyu6.Deletion where

import Data.List (sortOn, groupBy)
import Data.Function ( on )

deleteNth :: [Int] -> Int -> [Int]
deleteNth xs n =
  map snd
    . sortOn fst
    . concatMap (take n)
    . groupBy ((==) `on` snd)
    . sortOn snd
    . zip [0 ..]
    $ xs
