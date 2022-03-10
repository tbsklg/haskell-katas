module Kyu7.Kata3 where

import Data.List.Split (splitOn)

fizzBuzzCuckooClock :: String -> String
fizzBuzzCuckooClock time
  | m == 30 = "Cuckoo"
  | m == 0 = unwords . replicate h' $ "Cuckoo"
  | m `mod` 15 == 0 = "Fizz Buzz"
  | m `mod` 5 == 0 = "Buzz"
  | m `mod` 3 == 0 = "Fizz"
  | otherwise = "tick"
  where
    h = read (head . splitOn ":" $ time) :: Int
    m = read (last . splitOn ":" $ time) :: Int

    h'
      | h `mod` 12 == 0 = 12
      | otherwise = h `mod` 12
