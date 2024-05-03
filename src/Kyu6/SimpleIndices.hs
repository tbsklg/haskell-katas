module Kyu6.SimpleIndices where

solve :: String -> Int -> Maybe Int
solve str idx
  | str !! idx == '(' = findClosing 0 . drop idx . zip [0 ..] $ str
  | otherwise = Nothing
  where
    findClosing n ((i, ')') : xs)
      | n - 1 == 0 = Just i
      | otherwise = findClosing (n - 1) xs
    findClosing n ((_, '(') : xs) = findClosing (n + 1) xs
    findClosing n (_ : xs) = findClosing n xs
    findClosing _ [] = Nothing
