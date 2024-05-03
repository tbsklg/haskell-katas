module Kyu6.HighestWord where

import Data.Function (on)
import Data.List (elemIndex, maximumBy)
import Data.Maybe (fromJust)

high :: String -> String
high myStr = fst . maximumBy score . map (\x -> (x, calculateScore x)) . words $ myStr

calculateScore word = sum . map (\x -> (+) 1 . fromJust . elemIndex x $ alphabet) $ word

score :: (String, Int) -> (String, Int) -> Ordering
score (a, sa) (b, sb)
  | sa < sb = LT
  | otherwise = GT

alphabet :: String
alphabet = ['a' .. 'z']
