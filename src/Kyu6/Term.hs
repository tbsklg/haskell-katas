module Kyu6.Term where

import Data.Function (on)
import Data.List (group, maximumBy, sort)

highestRank :: Ord c => [c] -> c
highestRank = fst . maximumBy (compare `on` snd) . map (\x -> (head x, length x)) . group . sort
