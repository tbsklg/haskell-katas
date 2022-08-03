module Kyu7.SimpleStrDivision where

solve :: String -> Int -> Int
solve xs k = read . maximum . go $ xs
    where
        go ys
            | length ys > l = take l ys : go (tail ys)
            | otherwise = [ys]

        l = length xs - k

-- solve :: String -> Int -> Int 
-- solve xs k = read $ maximum $ divvy n 1 xs
--   where n = length xs - k
