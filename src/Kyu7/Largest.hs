module Kyu7.Largest (largest) where

import Data.List (sort)

largest :: Ord a => Int -> [a] -> [a]
largest n = sort . take n . reverse . sort
