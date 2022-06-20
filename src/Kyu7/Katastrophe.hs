module Kyu7.Katastrophe where

strongEnough :: [[Int]] -> Int -> String
strongEnough earthquake age = if isStrong then "Safe!" else "Needs Reinforcement!"
  where
    isStrong = (>=) decay . product . map sum $ earthquake
    decay = round (1000 * (1 - 0.01) ^ age)
