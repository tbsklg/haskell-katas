module Kyu4.Snail where

import Data.Maybe (fromMaybe)

type Position = (Int, Int)

type Dimension = Int

data Direction = R | L | U | D deriving (Show)

snail :: [[Int]] -> [Int]
snail xs = map (\(x, y) -> xs !! x !! y) . reverse . path $ (length xs - 1)

path :: Dimension -> [Position]
path x =
  foldl nextPositions [(0, 0)]
    . zip (x : concat [[y, y] | y <- [x, x - 1 .. 0]])
    $ cycle [R, D, L, U]

nextPositions :: [Position] -> (Int, Direction) -> [Position]
nextPositions xs (d, R) = map (right $ currentPosition xs) [d, d - 1 .. 1] ++ xs
nextPositions xs (d, D) = map (down $ currentPosition xs) [d, d - 1 .. 1] ++ xs
nextPositions xs (d, L) = map (left $ currentPosition xs) [d, d - 1 .. 1] ++ xs
nextPositions xs (d, U) = map (up $ currentPosition xs) [d, d - 1 .. 1] ++ xs

currentPosition :: [Position] -> Position
currentPosition = fromMaybe (0, 0) . headMay

down :: Position -> Int -> Position
down (x, y) z = (x + z, y)

up :: Position -> Int -> Position
up (x, y) z = (x - z, y)

right :: Position -> Int -> Position
right (x, y) z = (x, y + z)

left :: Position -> Int -> Position
left (x, y) z = (x, y - z)

headMay :: [a] -> Maybe a
headMay [] = Nothing
headMay xs = Just $ head xs
