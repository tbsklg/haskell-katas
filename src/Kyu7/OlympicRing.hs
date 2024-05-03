module Kyu7.OlympicRing where

data Medal = Bronze | Silver | Gold deriving (Eq, Enum, Show)

olympicRing :: String -> Maybe Medal
olympicRing s
  | score <= 1 = Nothing
  | score == 2 = Just Bronze
  | score == 3 = Just Silver
  | otherwise = Just Gold
  where
    score = floor ((sum . map rings $ s) / 2)

rings :: (Num p) => Char -> p
rings x
  | x `elem` "abdegopqADOPQR" = 1
  | x == 'B' = 2
  | otherwise = 0
