module Kyu7.TableGame where

tableGame :: [[Int]] -> Maybe [Int]
tableGame table
  | table
      == [ [a, a + b, b],
           [a + c, a + b + c + d, b + d],
           [c, c + d, d]
         ] =
    Just [a, b, c, d]
  | otherwise = Nothing
  where
    a = table !! 0 !! 0
    b = table !! 0 !! 2
    c = table !! 2 !! 0
    d = table !! 2 !! 2
