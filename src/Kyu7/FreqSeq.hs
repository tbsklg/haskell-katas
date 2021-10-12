module Kyu7.FreqSeq (freqSeq) where

import Data.List (intercalate)
import Data.Map (fromListWith, toList)

freqSeq :: String -> Char -> String
freqSeq str sep = intercalate [sep] $ countFreq str (frequencies str)
  where
    countFreq [] _ = []
    countFreq (x : xs) freq = case lookup x freq of
      Just a -> show a : countFreq xs freq
      Nothing -> []

frequencies :: (Ord k, Num a) => [k] -> [(k, a)]
frequencies str = toList $ fromListWith (+) [(c, 1) | c <- str]
