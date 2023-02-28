module Kyu6.OfficeV (meeting) where

meeting :: [(String, Int)] -> Int -> Either String [Int]
meeting rooms need
  | need == 0 = Left "Game On"
  | (>) need . sum $ freeChairs = Left "Not enough!"
  | otherwise = Right freeChairs
  where
    freeChairs = countChairs rooms need

    countChairs [] _ = []
    countChairs ((occupants, chairs) : xs) need
      | need == 0 = []
      | freeChairs <= 0 = 0 : countChairs xs need
      | need < freeChairs = need : countChairs xs 0
      | otherwise = freeChairs : countChairs xs (need - freeChairs)
      where
        freeChairs = chairs - length occupants
