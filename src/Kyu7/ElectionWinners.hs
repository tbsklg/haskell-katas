module Kyu7.ElectionWinners where

import Data.List (elemIndices, sort)

electionWinners :: [Int] -> Int -> Int
electionWinners candidates 0
    | length winners == 1 = 1
    | otherwise = 0
    where
        winners = elemIndices (maximum candidates) candidates
electionWinners candidates votes = length . findWinner $ mayBeWinners
  where
    findWinner [] = []
    findWinner (x : xs)
      | x + votes > currentWinner = x : findWinner xs
      | otherwise = []

    currentWinner = maximum candidates
    mayBeWinners = reverse . sort $ candidates
