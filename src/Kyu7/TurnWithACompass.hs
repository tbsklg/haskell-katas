module Kyu7.TurnWithACompass (direction, Direction (..)) where

data Direction = N | NE | E | SE | S | SW | W | NW deriving (Show, Eq)

direction :: Direction -> Int -> Direction
direction facing turn = (!! max 0 move) . dropWhile (/= facing) $ compass'
  where
    move = abs turn `div` 45
    compass'
      | turn < 0 = counterclockwise
      | otherwise = clockwise
    clockwise = cycle compass
    counterclockwise = cycle . reverse $ compass

compass :: [Direction]
compass = [N, NE, E, SE, S, SW, W, NW]
