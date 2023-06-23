module Kyu5.TransformToPrime where

minimumNumber :: [Integer] -> Integer
minimumNumber xs = nextPrimeFrom (sum xs) - sum xs

nextPrimeFrom x = head . dropWhile (not . isPrime) $ [x ..]
 where
  isPrime n = all (\x -> n `mod` x /= 0) [2 .. (n -1)]
