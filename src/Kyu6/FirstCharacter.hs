module Kyu6.FirstCharacter where

firstDup :: (Eq a) => [a] -> Maybe a
firstDup [] = Nothing
firstDup (x : xs)
  | x `elem` xs = Just x
  | otherwise = firstDup xs
