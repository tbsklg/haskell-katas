module Kyu7.Pandemia (infected) where

import Data.List.Split (splitOn)

infected :: String -> Double
infected "" = 0.0
infected x
  | totalPopulation x == 0 = 0.0
  | otherwise = (fromIntegral (totalInfectedPeople x) / fromIntegral (totalPopulation x)) * 100

ocean :: [Char]
ocean = "X"

totalInfectedPeople :: [Char] -> Int
totalInfectedPeople p = sum $ map infectedPeople (splitOn ocean p)

infectedPeople :: (Foldable t) => t Char -> Int
infectedPeople x
  | '1' `elem` x = length x
  | otherwise = 0

totalPopulation :: [Char] -> Int
totalPopulation s = length $ filter (/= 'X') s

-- infected :: String -> Double
-- infected s | inf == 0 = 0
--            | otherwise = 100 * fromIntegral inf / fromIntegral pop
--            where continents = splitOn "X" s
--                  pop = sum $ map length continents
--                  inf = sum $ map length $ filter (any (=='1')) continents
