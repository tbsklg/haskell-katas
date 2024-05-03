module Kyu6.StepInPrimes where

step :: Integer -> Integer -> Integer -> Maybe (Integer, Integer)
step g m n
  | m == n = Nothing
  | isPrime m && isPrime (m + g) = Just (m, m + g)
  | otherwise = step g (m + 1) n

isPrime x = x > 1 && all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]
