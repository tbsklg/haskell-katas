module Kyu7.BoiledEggs where

cookingTime :: Integer -> Integer
cookingTime n = ceiling (fromIntegral n / 8) * 5
