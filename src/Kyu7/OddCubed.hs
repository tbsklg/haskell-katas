module Kyu7.OddCubed where

oddCubed :: [Int] -> Int
oddCubed [] = 0
oddCubed i = sum . filter odd . map (^ 3) $ i
