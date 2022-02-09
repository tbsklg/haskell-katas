module Kyu7.Capitals where

import Data.Char (isUpper)

capitals :: String -> [Int]
capitals = map fst . filter (\(_, x) -> isUpper x) . zip [0 ..]
