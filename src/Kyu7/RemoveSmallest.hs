module Kyu7.RemoveSmallest where

removeSmallest :: [Int] -> [Int]
removeSmallest [] = []
removeSmallest xs = takeWhile (not . isMinimum) xs ++ (tail . dropWhile (not . isMinimum) $ xs)
  where
    isMinimum x = x == minimum xs

-- removeSmallest xs = delete (minimum xs) xs
