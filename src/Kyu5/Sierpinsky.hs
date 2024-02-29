module Kyu5.Sierpinsky where

import Data.List

sierpinsky :: (Integral a) => a -> String
sierpinsky = intercalate "\n" . go
 where
  go 0 = ["L"]
  go n = go (n - 1) ++ project (go (n - 1)) (2 ^ n - 1)

project :: [String] -> Int -> [String]
project [] _ = []
project (l:ls) n = shift l n : project ls (n - 2)
  where
    shift :: String -> Int -> String
    shift l n = l ++ space n ++ l

space x = concat . replicate x $ " "
