module Kyu7.ReverseLonger where

import Data.Function (on)
import Data.List (maximumBy, minimumBy)

reverseLonger :: String -> String -> String
reverseLonger a b = shorter ++ reverse longer ++ shorter
  where
    longer = maximumBy (compare `on` length) [b, a]
    shorter = minimumBy (compare `on` length) [b, a]
