module Kyu7.Strength where

alexMistakes :: Int -> Int -> Int
alexMistakes numberOfKatas timeLimit = length . takeWhile (> 0) . scanl (-) (timeForMistakes - 5) . iterate (* 2) $ 10
    where
        timeForMistakes = fromIntegral timeLimit - fromIntegral numberOfKatas / 10 * 60
