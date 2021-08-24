module Kyu7.Square where

isSquare :: Integral n => n -> Bool
isSquare n
    | n < 0 = False
    | n == 0 = True
    | otherwise = isSquare n n
    where 
        isSquare n 0 = False
        isSquare n counter = counter ^ 2 == n || isSquare n (counter - 1)

-- isSquare n = square * square == n
--     where square = floor $ sqrt $ (fromIntegral n::Double)
