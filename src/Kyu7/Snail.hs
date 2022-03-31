module Kyu7.Snail where

snail :: Int -> Int -> Int -> Int
snail m d n = snail' 0 0
  where
    snail' curr days =
      let nextDays = 1 + days
       in if curr + d >= m
            then nextDays
            else snail' (curr + d - n) nextDays
