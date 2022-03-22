module Kyu5.Reduction where

data Direction = North | East | West | South deriving (Eq, Show)

dirReduce :: [Direction] -> [Direction]
dirReduce [] = []
dirReduce dirs = foldl reduce [head dirs] $ tail dirs
  where
    reduce d c
      | null d = [c]
      | last d == opposite c = init d
      | otherwise = d ++ [c]

opposite :: Direction -> Direction
opposite North = South
opposite South = North
opposite West = East
opposite East = West
