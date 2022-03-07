module Kyu7.Inspiring where

import Data.Function (on)
import Data.List (maximumBy)

longestWord :: String -> String
longestWord = maximumBy (compare `on` length) . words
