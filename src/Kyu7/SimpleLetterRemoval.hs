module Kyu7.SimpleLetterRemoval where

import Data.List (elemIndex)

solve :: [Char] -> Int -> [Char]
solve l k = remove' l k alphabet
  where
    remove' [] _ _ = []
    remove' l 0 _ = l
    remove' l k a
      | k > length l = []
      | otherwise =
          case elemIndex (head a) l of
            Just a -> remove' (take a l ++ drop (a + 1) l) (k - 1) alphabet
            Nothing -> remove' l k (tail a)

alphabet :: [Char]
alphabet = ['a' .. 'z']

-- map fst . sortOn snd . drop k . sort $ zip xs [0..]
