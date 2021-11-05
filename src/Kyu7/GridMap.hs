module Kyu7.GridMap where

gridMap :: (a -> b) -> [[a]] -> [[b]]
gridMap = map . map
