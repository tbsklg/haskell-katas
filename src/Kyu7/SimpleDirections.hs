module Kyu7.SimpleDirections where

solve :: [String] -> [String]
solve [] = []
solve [x] = [x]
solve xs = start : (solve' . reverse $ xs)
  where
    solve' [] = []
    solve' [x] = []
    solve' (x : y : xs)
      | dir == "Left" = ("Right" ++ street) : solve' (y : xs)
      | otherwise = ("Left" ++ street) : solve' (y : xs)
      where
        dir = takeWhile (/= ' ') x
        street = dropWhile (/= ' ') y

    start = "Begin" ++ (dropWhile (/= ' ') . last $ xs)
