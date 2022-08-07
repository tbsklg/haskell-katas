module Kyu6.MultiplicationTable where

multiplicationTable :: Int -> [[Int]]
multiplicationTable n = take n . go $ [1, 2 ..]
  where
    go l@(x : y : _) = take n l : go [x + 1, (x + 1) * 2 ..]
    go _ = []
