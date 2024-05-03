module Kyu6.AreWeAlternate (isAlt) where

isAlt :: String -> Bool
isAlt [] = True
isAlt (x : xs)
  | isVowel x = and . zipWith (\f x -> f x) (cycle [not . isVowel, isVowel]) $ xs
  | otherwise = and . zipWith (\f x -> f x) (cycle [isVowel, not . isVowel]) $ xs

isVowel = (`elem` "aeiou")
