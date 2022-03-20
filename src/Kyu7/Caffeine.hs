module Kyu7.Caffeine where

caffeineBuzz :: Integer -> String
caffeineBuzz i
  | i `mod` 12 == 0 && even i = "CoffeeScript"
  | i `mod` 12 == 0 = "Coffee"
  | i `mod` 3 == 0 && even i = "JavaScript"
  | i `mod` 3 == 0 = "Java"
  | otherwise = "mocha_missing!"
