module Kyu7.Flush where

isFlush :: [String] -> Bool
isFlush xs = all ((== suit) . last) xs
  where
    suit = last . head $ xs
