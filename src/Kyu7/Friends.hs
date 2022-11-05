module Kyu7.Friends where

friends :: Int -> Int
friends 0 = 0
friends 1 = 0
friends i
  | isInt logBase2 = floor (logBase2 - 1)
  | otherwise = floor logBase2
  where
    logBase2 = logBase 2 $ (fromIntegral i)

isInt x = x == fromInteger (round x)
