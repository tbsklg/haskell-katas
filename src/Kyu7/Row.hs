module Kyu7.Row where

import Data.List (partition)

rowWeights :: [Int] -> [Int]
rowWeights l =
  let (s, a) = parts l
      (_, o) = unzip s
      (_, e) = unzip a
   in [sum o, sum e]

parts :: Integral a => [b] -> ([(a, b)], [(a, b)])
parts l = partition (even . fst) (zip [0 ..] l)

-- rowWeights :: [Int] -> [Int]
-- rowWeights [] = [0, 0]
-- rowWeights [x] = [x, 0]
-- rowWeights (x:y:xs) = [x+a,y+b]
--   where (a:[b]) = rowWeights xs
