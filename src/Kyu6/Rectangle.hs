module Kyu6.Rectangle where

squaresInRect :: Integer -> Integer -> Maybe [Integer]
squaresInRect lng wdth
  | lng == wdth = Nothing
  | otherwise = Just $ go lng wdth
  where
    go l w
      | l == w = [l]
      | l > w = w : go (l - w) w
      | l < w = l : go l (w - l)
