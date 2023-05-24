module Kyu6.Grapscrap where

import Data.List (sort)

grabScrab :: String -> [String] -> [String]
grabScrab w = filter (\x -> sort x == sort w)
