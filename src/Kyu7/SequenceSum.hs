module Kyu7.SequenceSum (sequenceSum) where

sequenceSum :: (Integer, Integer, Integer) -> Integer
sequenceSum (begin, end, step)
  | begin == end = step
  | otherwise = sum [begin, (begin + step) .. end]
