module Kyu7.Fold where

foldTo :: Double -> Maybe Int
foldTo distance
  | distance < 0 = Nothing
  | otherwise = Just foldings
  where
    foldings = length . takeWhile (<= distance) . scanl (*) paper $ [2,2 ..]

paper :: Double
paper = 0.0001
