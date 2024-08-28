module Kyu7.AnimalCalculator where

solution :: Int -> [Int]
solution 1 = [1, 15, 15]
solution humanYears = 
  let catYears = 15 + 9 + 4 * (humanYears - 2)
      dogYears = 15 + 9 + 5 * (humanYears - 2)
  in [humanYears, catYears, dogYears]
