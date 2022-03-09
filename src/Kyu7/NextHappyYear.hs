module Kyu7.NextHappyYear where

import Data.List (nub)

nextHappyYear :: Int -> Int
nextHappyYear i = head . dropWhile (not . isHappyYear) $ [(i + 1) ..]

isHappyYear :: Int -> Bool
isHappyYear x = length d == (length . nub $ d)
  where
    d = digits x

digits :: Int -> [Int]
digits 0 = []
digits t = digits (t `div` 10) ++ [t `mod` 10]

-- nextHappyYear = until (isUnique . show) succ . succ where
--   isUnique = nub >>= (==)
