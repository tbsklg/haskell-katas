module Kyu7.LargeNumberGetter where

getLargerNumbers :: Ord a => [a] -> [a] -> [a]
getLargerNumbers = zipWith (curry (\x -> maximum [fst x, snd x]))

-- getLargerNumbers = zipWith max
