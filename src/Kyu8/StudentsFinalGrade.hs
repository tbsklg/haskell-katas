module Kyu8.StudentsFinalGrade (finalGrade) where

finalGrade :: Int -> Int -> Int
finalGrade grade projects
    | grade > 90 || projects > 10 = 100
    | grade > 75 && projects > 4 = 90
    | grade > 50 && projects > 1 = 75
    | otherwise = 0
