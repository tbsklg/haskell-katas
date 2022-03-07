module Kyu7.Gap where 

import Data.List (sort)

maxGap :: [Int] -> Int
maxGap i = maximum . zipWith (\y x -> abs (x - y)) (tail sorted) $ sorted
    where
        sorted = reverse . sort $ i 

-- maxGap = maximum . (tail >>= zipWith (-)) . sort
