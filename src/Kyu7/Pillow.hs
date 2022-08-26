module Kyu7.Pillow where

import Data.List (elemIndices, intersect)

pillow :: (String, String) -> Bool
pillow (a, b) = not . null . intersect ns $ bs
  where
    ns = elemIndices 'n' a
    bs = elemIndices 'B' b
