module Kyu7.MergeOverlappingStrings (merge) where

import Data.List (isPrefixOf, tails)

merge :: (Eq a, Show a) => [a] -> [a] -> [a]
merge [] [] = []
merge a b = case filter (`isPrefixOf` b) . init . tails $ a of
  [] -> a ++ b
  o -> take ((-) (length a) . length . head $ o) a ++ b
