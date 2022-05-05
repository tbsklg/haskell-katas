module Kyu7.CandyProblem where

candies :: [Int] -> Int
candies xs = sum . map distribute $ xs
  where
    mostCandies = maximum

    distribute x = mostCandies xs - x
