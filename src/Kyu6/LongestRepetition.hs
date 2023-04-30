module Kyu6.LongestRepetition where

import Data.List (group, maximumBy)
import Data.Ord (comparing)

longestRepetition :: String -> Maybe (Char, Int)
longestRepetition [] = Nothing
longestRepetition xs = Just . maximumBy (comparing snd) . map (\x -> (head x, length x)) . group . reverse $ xs
