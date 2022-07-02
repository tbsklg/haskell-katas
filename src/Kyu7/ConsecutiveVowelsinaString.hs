module Kyu7.ConsecutiveVowelsinaString (getTheVowels) where

getTheVowels :: String -> Int
getTheVowels xs = go (dropWhile (/= 'a') xs) (cycle "eioua")
  where
    go (x : xs) (y : ys) = (+) 1 . go (dropWhile (/= y) xs) $ ys
    go _ _ = 0
