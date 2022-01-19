module Kyu7.MenBoys where

import Data.List (nub,sort)

menFromBoys :: [Int] -> [Int]
menFromBoys i = men ++ boys
    where
        men = sort . filter even . nub $ i
        boys = reverse . sort . filter odd . nub $ i
