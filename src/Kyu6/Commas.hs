module Kyu6.Commas where

import Data.List (intercalate)
import Data.List.Split (chunksOf)

groupByCommas :: Int -> String
groupByCommas xs = intercalate "," . chunk . show $ xs
 where
  chunk xs = (:) (take (length xs `mod` 3) xs) . chunksOf 3 . drop (length xs `mod` 3) $ xs
