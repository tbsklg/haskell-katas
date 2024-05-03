module Kyu6.NextVersion where

import Data.List (intercalate)
import Data.List.Split (splitOn)

nextVersion :: String -> String
nextVersion = intercalate "." . map show . reverse . nextVersion' . reverse . map read . splitOn "."
  where
    nextVersion' [] = []
    nextVersion' [x] = [x + 1]
    nextVersion' (x : xs)
      | x >= 9 = 0 : nextVersion' xs
      | otherwise = x + 1 : xs
