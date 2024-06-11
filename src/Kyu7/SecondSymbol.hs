module Kyu7.SecondSymbol (secondSymbol) where

import Data.List (elemIndices)

secondSymbol :: String -> Char -> Int
secondSymbol xs c = case elemIndices c xs of
  [] -> -1
  [_] -> -1
  (x : xs) -> head xs
