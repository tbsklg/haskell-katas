module Kyu7.HangingTheCurtains (numberOfHooks) where

numberOfHooks :: Double -> Double -> Int
numberOfHooks w h = succ $ half w
  where
    half l
      | h >= l = 1
      | otherwise = 2 * half (l / 2)
