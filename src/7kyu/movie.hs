module Codewars.G964.Movie where

movie :: Int -> Int -> Double -> Int
movie card ticket perc = calc 0 (fromIntegral card) 1
  where
    calc costA costB times
      | costA >= ceiling costB = times - 1
      | otherwise = calc (costA + ticket) (costB + systemB ticket perc times) (times + 1)

systemB :: Int -> Double -> Int -> Double
systemB ticket perc times = fromIntegral ticket * perc ^ times

-- movie :: Int -> Int -> Double -> Int
-- movie card ticket perc = length $ takeWhile not $ zipWith (>) systemA systemB where
--   systemA = [0, ticket ..]
--   systemB = map ceiling $ scanl (+) (toEnum card) $ iterate (perc *) $ perc * toEnum ticket
