module Kyu7.Funcij where

sumin :: Integer -> Integer
sumin i = sum $ map(uncurry f) (table i)

f :: Integer -> Integer -> Integer
f = min

sumax :: Integer -> Integer
sumax i = sum $ map(uncurry g) (table i)

g :: Integer -> Integer -> Integer
g = max

sumsum :: Integer -> Integer
sumsum i = sum $ map(uncurry h) (table i)

h :: Integer -> Integer -> Integer
h x y = x + y

table :: Integer -> [(Integer, Integer)]
table n = [(x, y) | x <- [1 .. n], y <- [1 .. n]]

-- sumin :: Integer -> Integer
-- sumin n = n * (n + 1) * (2 * n + 1) `div` 6

-- sumax :: Integer -> Integer
-- sumax n = n * (n + 1) * (4 * n - 1) `div` 6

-- sumsum :: Integer -> Integer
-- sumsum n = n * n * (n + 1)
