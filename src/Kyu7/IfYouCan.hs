module Kyu7.IfYouCan (cantBeatSoJoin) where

import Data.List (sortOn)
import Data.Ord (Down (..))

cantBeatSoJoin :: [[Int]] -> [Int]
cantBeatSoJoin = concat . sortOn (Down . sum)
