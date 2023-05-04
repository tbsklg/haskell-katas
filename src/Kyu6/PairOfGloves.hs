module Kyu6.PairOfGloves (numberOfPairs, Colour (..)) where

import Data.List (group, sort)

data Colour = Red | Blue | Green | Gray | Black | Purple deriving (Show, Eq, Ord, Enum, Bounded)

numberOfPairs :: [Colour] -> Int
numberOfPairs = sum . map ((`div` 2) . length) . group . sort
