module Kyu6.Revrot where

import Data.Char (digitToInt)
import Data.List.Split (chunksOf)

revRot :: [Char] -> Int -> [Char]
revRot _ 0 = []
revRot strng sz = concatMap reverseOrRotate . filter (\x -> length x == sz) . chunksOf sz $ strng
  where
    shiftLeft [] = []
    shiftLeft (x : xs) = xs ++ [x]

    reverseOrRotate :: [Char] -> [Char]
    reverseOrRotate chunk
      | even . sum . map ((^ 2) . digitToInt) $ chunk = reverse chunk
      | otherwise = shiftLeft chunk
