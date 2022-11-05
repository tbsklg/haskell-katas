module Kyu7.Tube where

import Debug.Trace (traceShow)

-- import Codewars.Kata.Tube.Types

data Decision = Bus | Walk deriving (Eq, Show)

calculator ::
  -- | the distance you would have to walk
  Double ->
  -- | the distance the bus would travel
  Double ->
  -- | the distance you have to *walk* to the bus
  Double ->
  -- | your decision whether to take the Bus or Walk
  Decision
calculator distance busDrive busWalk
  | walk > 2 = Bus
  | walk < (10 / 60) || walk <= bus = Walk
  | otherwise = Bus
  where
    walk = distance / walkPerHour
    bus = busDrive / busPerHour + busWalk / walkPerHour

walkPerHour :: Double
walkPerHour = 5

busPerHour :: Double
busPerHour = 8
