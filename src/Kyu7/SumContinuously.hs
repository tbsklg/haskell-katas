module Kyu7.SumContinuously where

add :: [Integer] -> [Integer]
add l = foldl (\y x -> y ++ [last y + x]) [head l] . tail $ l

-- scanl1 (+)
