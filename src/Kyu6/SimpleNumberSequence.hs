module Kyu6.SimpleNumberSequence (missing) where

import Data.List (find)

type Gap = Int

missing :: String -> Maybe Int
missing [] = Nothing
missing [_, _] = Nothing
missing xs = findMissing 1
  where
    findMissing size
      | size > length xs `div` 2 = Nothing
      | isRelevant . extractInts size $ xs = case findGap . extractInts size $ xs of
          Nothing -> findMissing (size + 1)
          Just g -> Just g
      | otherwise = findMissing (size + 1)

isRelevant :: [Int] -> Bool
isRelevant xs = (gapsWithOne == length xs - 2) && gapsWithTwo == 1
  where
    gapsWithOne = length . filter (== 1) $ gaps
    gapsWithTwo = length . filter (== 2) $ gaps
    gaps = map (\(x, y) -> y - x) . zip xs . tail $ xs

extractInts :: Gap -> String -> [Int]
extractInts _ [] = []
extractInts g xs
  | extractedNumber == (read . replicate g $ '9') =
      extractedNumber : extractInts (g + 1) furtherNumber
  | otherwise = extractedNumber : extractInts g furtherNumber
  where
    extractedNumber = read (take g xs) :: Int
    furtherNumber = drop g xs

findGap :: [Int] -> Maybe Int
findGap xs = case find (\(x, y) -> y - x /= 1) . zip xs . tail $ xs of
  Nothing -> Nothing
  Just (x, _) -> Just (x + 1)
