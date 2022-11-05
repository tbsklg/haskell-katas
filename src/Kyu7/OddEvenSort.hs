module Kyu7.OddEvenSort where

import Data.List (partition)

sortMyString :: String -> String
sortMyString xs = unwords [e, o]
  where
    e = map snd . fst $ p
    o = map snd . snd $ p
    p = partition (\(x, _) -> even x) . zip [0 ..] $ xs
