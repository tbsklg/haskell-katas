module Kyu7.Operations where

calc :: [Int] -> Int
calc = sum . multiplyByMinusOne . multiplyBy3 . square

square :: [Int] -> [Int]
square = map (\x -> if x > 0 then x ^ 2 else x)

multiplyBy3 :: [Int] -> [Int]
multiplyBy3 = zipWith (\x y -> (if x `mod` 3 == 0 then y * 3 else y)) [1 ..]

multiplyByMinusOne :: [Int] -> [Int]
multiplyByMinusOne = zipWith (\x y -> (if x `mod` 5 == 0 then y * (-1) else y)) [1 ..]
