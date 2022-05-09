module Kyu7.SF40 where

timedReading :: Int -> String -> Int
timedReading l =
  length
    . filter (\x -> length x <= l)
    . words
    . map replacePunctuation

replacePunctuation :: Char -> Char
replacePunctuation x
  | x `elem` "?.,!'" = ' '
  | otherwise = x
