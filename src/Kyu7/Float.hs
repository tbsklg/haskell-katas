module Kyu7.Float where

solution :: Float -> Float
solution = flip (/) 100 . fromIntegral . round . (*) 100
