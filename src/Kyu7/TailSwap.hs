module Kyu7.TailSwap where

import Data.List.Split (splitOn)

tailSwap :: (String, String) -> (String, String)
tailSwap (a, b) = (head a' ++ ":" ++ last b', head b' ++ ":" ++ last a')
  where
    a' = splitOn ":" a
    b' = splitOn ":" b
