module Kyu7.LockerRun where

lockerRun :: Int -> [Int]
lockerRun x = takeWhile (<= x) . map (^ 2) $ [1 ..]
