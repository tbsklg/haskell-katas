module Kyu7.Automorphic where

automorphic :: Integer -> String
automorphic i
  | (fromIntegral i ^ 2 - i) `rem` 10 ^ numberOfDigits i == 0 = automorphic'
  | otherwise = not'

automorphic' :: [Char]
automorphic' = "Automorphic"

not' :: [Char]
not' = "Not!!"

numberOfDigits :: (Ord a, Num a, Show a) => a -> Int
numberOfDigits n
  | n < 0 = length (show n) - 1
  | otherwise = length (show n)

-- automorphic n = bool "Not!!" "Automorphic" $ show n `isSuffixOf` show (n^2)
