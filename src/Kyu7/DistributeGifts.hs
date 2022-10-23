module Kyu7.DistributeGifts (distributeGifts) where

distributeGifts :: [Int] -> Int
distributeGifts = sum . map wishes
  where
    wishes n
      | n == 1 || isPrime n = n
      | otherwise = greatestFactor n

    isPrime n = all (\x -> n `mod` x > 0) [2 .. bound n]
    bound = floor . sqrt . fromIntegral

    greatestFactor n = maximum . filter (\x -> n `mod` x == 0) $ [1 .. (n - 1)]
