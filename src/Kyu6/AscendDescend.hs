module Kyu6.AscendDescend (ascendDescend) where

ascendDescend :: Int -> Int -> Int -> String
ascendDescend len minBound maxBound
  | minBound >= maxBound = ""
  | otherwise = take len . concatMap show . cycle $ ascend ++ descend
  where
    ascend = [minBound .. maxBound]
    descend = [maxBound - 1, maxBound - 2 .. minBound + 1]
