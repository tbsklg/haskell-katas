module Kyu5.Scramblies where

import qualified Data.Map as M

scramble :: [Char] -> [Char] -> Bool
scramble s1 s2 = M.isSubmapOfBy (<=) d2 d1
  where
    d1 = foldl (\y x -> M.insertWith (+) x 1 y) M.empty s1
    d2 = foldl (\y x -> M.insertWith (+) x 1 y) M.empty s2

-- scramble = flip (isSubsequenceOf `on` sort)
