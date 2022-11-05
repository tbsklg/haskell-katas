module Kyu7.Arge where

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug = countYears 1 p0
  where
    countYears cnt current target
      | population current percent aug > target = cnt
      | otherwise = countYears (cnt + 1) (population current percent aug) target

population :: Int -> Double -> Int -> Int
population population growthRate newInhabitants = growth + newInhabitants
  where
    growth = floor (fromIntegral population + (fromIntegral population * growthRate / 100))

-- nbYear :: Int -> Double -> Int -> Int -> Int
-- nbYear p0 percent aug p
--   = length
--   $ takeWhile (< p)
--   $ iterate ((+ aug ) . floor . (* (1+percent/100)) . fromIntegral) p0

-- nbYear :: Int -> Double -> Int -> Int -> Int
-- nbYear p0 percent aug p = length $ takeWhile (< p) $ iterate nextYear p0
--     where nextYear x = x + floor (fromIntegral x * percent / 100) + aug
