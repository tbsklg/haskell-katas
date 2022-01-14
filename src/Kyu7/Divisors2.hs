module Kyu7.Divisors2 where

divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a
  | length divisors == 1 = Left (show a ++ " is prime")
  | otherwise = Right . init $ divisors
  where
    divisors = divs [2 .. a]
    divs [] = []
    divs (x : xs)
      | a `mod` x == 0 = x : divs xs
      | otherwise = divs xs
