module Kyu7.NthSeries where

import Text.Printf

series :: [Double]
series = map (1 /) [1, 4 ..]

seriesSum :: Integer -> String
seriesSum i = printf "%.2f" $ sum $ take (fromInteger i) series
