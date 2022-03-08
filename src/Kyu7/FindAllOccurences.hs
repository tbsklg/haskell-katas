module Kyu7.FindAllOccurences (findAll) where

import Data.List (elemIndices)

findAll :: [Int] -> Int -> [Int]
findAll xs n = elemIndices n xs
