module Kyu7.Alternate where

import Data.Maybe (listToMaybe)

alternateSqSum :: [Integer] -> Maybe Integer
alternateSqSum [] = Nothing
alternateSqSum seq = Just . sum . (++) evens . map (^ 2) $ odds
  where
    evens = map snd . filter (\(i, x) -> even i) . zip [0 ..] $ seq
    odds = map snd . filter (\(i, x) -> odd i) . zip [0 ..] $ seq
