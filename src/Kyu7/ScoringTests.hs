module Kyu7.ScoringTests where

scoreTest :: (Integral a) => [a] -> a -> a -> a -> a
scoreTest li a b c = a * correct + b * omitted - c * wrong
  where
    correct = fromIntegral . length . filter (== 0) $ li
    omitted = fromIntegral . length . filter (== 1) $ li
    wrong = fromIntegral . length . filter (== 2) $ li
