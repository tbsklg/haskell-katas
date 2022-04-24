module Kyu7.Tetris (score) where

score :: [Int] -> Int
score = fst . foldl next (0, 0)
  where
    next (currentScore, currentLines) line = (currentScore + score level line, currentLines + line)
      where
        level = currentLines `div` 10

    score l 1 = (!! max 0 l) [40, 80 ..]
    score l 2 = (!! max 0 l) [100, 200 ..]
    score l 3 = (!! max 0 l) [300, 600 ..]
    score l 4 = (!! max 0 l) [1200, 2400 ..]
    score l _ = 0
