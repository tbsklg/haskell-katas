module Kyu7.EliminateTheIntruders (eliminateUnsetBits) where

eliminateUnsetBits :: String -> Integer
eliminateUnsetBits xs
  | null ones = 0
  | otherwise = decimal . read $ ones
  where
    ones = filter (== '1') xs

decimal :: Integer -> Integer
decimal 0 = 0
decimal i = 2 * decimal (i `div` 10) + i `mod` 10
