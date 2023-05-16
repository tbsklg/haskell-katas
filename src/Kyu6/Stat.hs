module Kyu6.Stat where

import Data.List (sort)
import Text.Parsec
import Text.Printf (printf)

type Time = (Int, Int, Int)

stat :: String -> String
stat strg = case parse runnersParser "" strg of
  Left e -> error $ show e
  Right times -> printf "Range: %s Average: %s Median: %s" (toDisplayTime . range $ times) (toDisplayTime . average $ times) (toDisplayTime . median $ times)

median :: [Time] -> Time
median xs
  | odd . length $ xs = toTime $ middle
  | otherwise = toTime $ (leftMiddle + middle) `div` 2
 where
  leftMiddle = toSeconds $ (sort xs) !! (length xs `div` 2 - 1)
  middle = toSeconds $ (sort xs) !! (length xs `div` 2)

average :: [Time] -> Time
average xs = toTime $ sum seconds `div` length seconds
 where
  seconds = map toSeconds xs

range :: [Time] -> Time
range xs = toTime $ maximum seconds - minimum seconds
 where
  seconds = map toSeconds xs

toSeconds :: Time -> Int
toSeconds (h, m, s) = h * 3600 + m * 60 + s

toTime :: Int -> Time
toTime s = (s `div` 3600, (s `mod` 3600) `div` 60, s `mod` 60)

toDisplayTime :: Time -> String
toDisplayTime (hour, minute, second) = printf "%02d|%02d|%02d" hour minute second

runnersParser :: Parsec String () [Time]
runnersParser = do sepBy1 timeParser (char ',')

timeParser :: Parsec String () Time
timeParser = do
  many (char ' ')
  hour <- many1 digit
  char '|'
  minute <- many1 digit
  char '|'
  second <- many1 digit
  return (read hour, read minute, read second)
