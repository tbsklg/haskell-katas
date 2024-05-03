module Kyu6.MazeRunner where

import Control.Arrow (Arrow (second))
import qualified Data.Bifunctor
import Data.List (elemIndex)
import Data.Maybe (fromJust, isJust)

mazeRunner :: [[Int]] -> [Char] -> [Char]
mazeRunner maze = go . scanl (flip move) start
  where
    go [] = "Lost"
    go (x : xs)
      | dead maze x = "Dead"
      | finished maze x = "Finish"
      | otherwise = go xs
    start = findStart maze

finished :: (Eq a, Num a) => [[a]] -> (Int, Int) -> Bool
finished maze (x, y) = maze !! x !! y == 3

dead :: [[Int]] -> (Int, Int) -> Bool
dead maze (x, y) = outside || wall
  where
    outside = x < 0 || x >= dimension || y < 0 || y >= dimension
    wall = maze !! x !! y == 1

    dimension = length maze

move :: Char -> (Int, Int) -> (Int, Int)
move direction = fromJust . lookup direction $ moves

findStart :: [[Int]] -> (Int, Int)
findStart maze =
  head
    . map (second fromJust)
    $ [(x, y) | (x, y) <- zip [0 ..] . map (elemIndex 2) $ maze, isJust y]

moveNorth :: (Num a) => (a, b) -> (a, b)
moveNorth (x, y) = (x - 1, y)

moveSouth :: (Num a) => (a, b) -> (a, b)
moveSouth (x, y) = (x + 1, y)

moveEast :: (Num b) => (a, b) -> (a, b)
moveEast (x, y) = (x, y + 1)

moveWest :: (Num b) => (a, b) -> (a, b)
moveWest (x, y) = (x, y - 1)

moves :: [(Char, (Int, Int) -> (Int, Int))]
moves =
  [ ('N', moveNorth),
    ('S', moveSouth),
    ('E', moveEast),
    ('W', moveWest)
  ]
