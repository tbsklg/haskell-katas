module Kyu7.SingleDigit (singleDigit) where

singleDigit :: Integer -> Int
singleDigit i
  | ones < 10 && i < 10 = fromIntegral i
  | otherwise = fromIntegral $ singleDigit ones
  where
    ones = countOnes (decToBin i)

countOnes :: [Integer] -> Integer
countOnes = sum . filter (== 1)

decToBin :: (Integral a) => a -> [a]
decToBin 0 = []
decToBin n = (n `mod` 2) : decToBin (n `div` 2)
