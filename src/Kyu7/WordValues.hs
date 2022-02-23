module Kyu7.WordValues where

import Data.Bifunctor (Bifunctor (second))
import Data.List (elemIndex)

wordValue :: [[Char]] -> [Int]
wordValue = zipWith (curry (uncurry (*) . second value)) [1 ..]

value :: [Char] -> Int
value = sum . map pos

pos :: Char -> Int
pos c = case elemIndex c ['a' .. 'z'] of
  Just a -> a + 1
  _ -> 0
