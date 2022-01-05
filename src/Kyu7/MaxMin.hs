module Kyu7.MaxMin where 
    
import Data.List ( sort )

solve :: [Int] -> [Int] 
solve s = solve' (sort s)
    where
        solve' [] = []
        solve' [x] = [x]
        solve' l  = [last l] ++ [head l] ++ solve' (init . tail $ l)
            