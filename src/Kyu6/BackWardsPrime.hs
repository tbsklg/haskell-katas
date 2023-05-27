module Kyu6.BackWardsPrime where

backwardsPrime :: Integer -> Integer -> [Integer]
backwardsPrime start stop = filter (\x -> not . isPalindrom $ x) . filter (isPrime . reverseInteger) . primes start $ stop

isPalindrom :: Integer -> Bool
isPalindrom x = x == reverseInteger x

reverseInteger :: Integer -> Integer
reverseInteger = read . reverse . show

primes :: Integer -> Integer -> [Integer]
primes f t = filter isPrime [f .. t]

isPrime :: Integer -> Bool
isPrime x = x > 1 && all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]
