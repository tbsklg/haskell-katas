module Kyu7.FilterCoffee where

import Data.List (sort)

search :: Int -> [Int] -> String
search budget = init . tail . show . sort . filter (<= budget)
