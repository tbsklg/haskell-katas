module Kyu7.CountRedBeads where

countRedBeads :: Int -> Int
countRedBeads blueBeads
  | blueBeads < 2 = 0
  | otherwise = (blueBeads - 1) * 2
