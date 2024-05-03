module Kyu6.SplitStrings where

import Data.List.Split (chunksOf)

solution :: String -> [String]
solution xs
  | even $ length xs = chunksOf 2 xs
  | otherwise = chunksOf 2 (xs ++ "_")
