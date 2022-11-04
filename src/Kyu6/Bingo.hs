module Kyu6.Bingo where

import Data.Char (ord)

bingo :: [(String, Int)] -> Int -> String
bingo ticket n
  | wins >= n = "Winner!"
  | otherwise = "Loser!"
  where
    wins = sum . map win $ ticket

    win (xs, n)
      | any (\x -> ord x == n) xs = 1
      | otherwise = 0
