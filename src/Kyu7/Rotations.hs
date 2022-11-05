module Kyu7.Rotations where

import Data.List

containAllRots :: String -> [String] -> Bool
containAllRots str arr = rotate str (length str)
  where
    rotate _ 0 = True
    rotate perm times = permutation `elem` arr && rotate permutation (times - 1)
      where
        permutation = rotateOnce perm

rotateOnce :: String -> String
rotateOnce str = take (length str) (drop (length str - 1) (cycle str))
