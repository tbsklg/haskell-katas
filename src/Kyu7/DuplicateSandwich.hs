module Kyu7.DuplicateSandwich (duplicateSandwich) where

import Data.Char (toLower)
import Data.List (elemIndex, elemIndices)

duplicateSandwich :: (Eq a) => [a] -> [a]
duplicateSandwich l = go l
  where
    go [] = []
    go (x : xs)
      | (==) 2 . length $ indices = slice from to l
      | otherwise = go xs
      where
        from = head indices
        to = last indices
        indices = elemIndices x l

slice :: Int -> Int -> [a] -> [a]
slice f t l = take (t - f - 1) (drop (f + 1) l)
