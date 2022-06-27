module Kyu6.Decoder (uncompress) where

import Data.Char (digitToInt)
import Data.List.Split (splitOn, splitOneOf, splitWhen)
import Text.Parsec.String

uncompress :: String -> [Int]
uncompress xs = foldl decode [] (splitOn "," xs)
  where
    decode y x
      | '*' `elem` x = y ++ identical x
      | '-' `elem` x && '/' `elem` x = y ++ interval x
      | '-' `elem` x = y ++ consecutive x
      | otherwise = y ++ [read x]

interval :: [Char] -> [Int]
interval xs =
  go
    (read . takeWhile (/= '-') $ xs)
    (read . takeWhile (/= '/') . tail . dropWhile (/= '-') $ xs)
    (read . tail . dropWhile (/= '/') $ xs)
  where
    go x y z
      | x <= y = [x, x + z .. y]
      | otherwise = [x, x - z .. y]

identical :: [Char] -> [Int]
identical = go . map read . splitOn "*"
  where
    go [x, y] = replicate y x
    go _ = []

consecutive :: [Char] -> [Int]
consecutive xs =
  go
    (read . takeWhile (/= '-') $ xs)
    (read . tail . dropWhile (/= '-') $ xs)
  where
    go x y
      | x <= y = [x .. y]
      | otherwise = [x, x - 1 .. y]
