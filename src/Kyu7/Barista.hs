module Kyu7.Barista (barista) where

import Data.List (sort)

barista :: [Int] -> Int
barista = sum . scanl1 (\y x -> y + x + 2) . sort
