module Kyu6.ContiguousVowels (sortByVowels) where

import Data.List (elemIndex, sortBy)
import Data.Ord (comparing)

sortByVowels :: [String] -> [String]
sortByVowels xs = map snd . sortBy numberOfConsecutiveVowels . zip [0 ..] $ xs
  where
    numberOfConsecutiveVowels (ix, x) (iy, y)
      | consecutiveVowels x == consecutiveVowels y = compare ix iy
      | consecutiveVowels x < consecutiveVowels y = GT
      | otherwise = LT

    consecutiveVowels :: String -> Int
    consecutiveVowels xs = maximum . go $ xs
      where
        go [] = [0]
        go (x : xs)
          | isVowel x = (length . takeWhile isVowel $ (x : xs)) : go (dropWhile isVowel (x : xs))
          | otherwise = go xs

    isVowel :: Char -> Bool
    isVowel x = x `elem` "aeiouAEIOU"

-- sortByVowels = sortOn (Down . maximum . map length . splitWhen (`notElem` "AEIOUaeiou"))
