module Kyu6.RobotWalk (robotWalk) where

robotWalk :: [Word] -> Bool
robotWalk = run . drop 1
  where
    run ts@(a : _ : c : _) = (a <= c) || run (tail ts)
    run _ = False
