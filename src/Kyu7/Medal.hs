module Kyu7.Medal where

import Data.List.Split (splitOn)

time :: [Char] -> Int
time = read . concat . splitOn ":"

evilCodeMedal :: String -> String -> String -> String -> Maybe String
evilCodeMedal userTime gold silver bronze
  | time userTime < time gold = Just "Gold"
  | time userTime < time silver = Just "Silver"
  | time userTime < time bronze = Just "Bronze"
  | otherwise = Nothing
