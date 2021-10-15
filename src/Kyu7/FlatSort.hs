module Kyu7.FlatSort where

import Data.List (sort)

flatSort :: [[Int]] -> [Int]
flatSort i = sort $ concat i

-- flatSort = sort . concat
