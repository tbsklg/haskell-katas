module Kyu7.LondonCityHacker (londonCityHacker, Journey (..)) where

import Text.Printf (printf)

data Journey = Bus Int | Tube String deriving (Show, Eq)

londonCityHacker :: [Journey] -> String
londonCityHacker = print' . costs

costs :: [Journey] -> Double
costs [] = 0
costs (Bus _ : Bus _ : xs) = 1.50 + costs xs
costs (Tube _ : xs) = 2.40 + costs xs
costs (Bus _ : xs) = 1.50 + costs xs

print' :: Double -> String
print' = printf "£%.2f"
