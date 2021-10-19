module Kyu7.SwapDict where

import Data.Map (Map, fromListWith, toList)

swapDict :: Map String String -> Map String [String]
swapDict m = fromListWith (++) [(v, [k]) | (k, v) <- toList m]
