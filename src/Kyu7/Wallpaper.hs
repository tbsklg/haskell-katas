module Kyu7.Wallpaper where

wallpaper :: Double -> Double -> Double -> String
wallpaper l w h = numbers !! numberOfRollsToBuy
  where
    numberOfRollsToBuy
      | l == 0 || w == 0 || h == 0 = 0
      | otherwise = ceiling $ (l * h * 2 + w * h * 2) * 1.15 / standardRoll

standardRoll :: Double
standardRoll = 0.52 * 10.0

numbers :: [[Char]]
numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
