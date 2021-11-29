module Kyu7.Averages where

averages :: Maybe [Double] -> [Double]
averages (Just []) = []
averages Nothing = []
averages (Just l) = zipWith (\x y -> (x + y) / 2) (init l) (tail l)

-- averages = maybe [] (\xs -> zipWith (\a b -> (a+b)/2) xs (tail xs))
