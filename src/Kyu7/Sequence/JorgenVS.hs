module Kyu7.Sequence.JorgenVS where

import Data.List (intercalate)

sequenceSum :: Int -> String
sequenceSum i
  | i < 0 = show i ++ " < 0"
  | otherwise = intercalate "+" (map show seq) ++ " = " ++ show (sum seq)
  where
    seq = take (i + 1) [0 ..]
