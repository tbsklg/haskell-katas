module Kyu7.LowestTemp (lowestTemp) where

lowestTemp :: String -> Maybe Int
lowestTemp "" = Nothing
lowestTemp t = Just . minimum . map read . words $ t

-- import Data.List (sort)
-- import Data.Maybe (listToMaybe)

-- lowestTemp :: String -> Maybe Int
-- lowestTemp = listToMaybe . sort . map read . words
