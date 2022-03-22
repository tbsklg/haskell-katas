module Kyu5.Reduction where

data Direction = North | East | West | South deriving (Eq, Show)

dirReduce :: [Direction] -> [Direction]
dirReduce [] = []
dirReduce dirs = foldl reduce [head dirs] $ tail dirs
  where
    reduce path nextDir
      | null path = [nextDir]
      | last path == opposite nextDir = init path
      | otherwise = path ++ [nextDir]

opposite :: Direction -> Direction
opposite North = South
opposite South = North
opposite West = East
opposite East = West
