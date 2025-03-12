module Kyu6.Count (count) where

import qualified Data.Map as M

count :: String -> [(Char,Int)]
count = M.toList . foldr (\c acc -> M.insertWith (+) c 1 acc) M.empty
