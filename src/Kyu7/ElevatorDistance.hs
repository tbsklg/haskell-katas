module Kyu7.ElevatorDistance (elevatorDistance) where

elevatorDistance :: [Int] -> Int
elevatorDistance [] = 0
elevatorDistance [x] = 0
elevatorDistance (x : y : ys) = abs (x - y) + elevatorDistance (y : ys)
