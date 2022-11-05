module Kyu7.StrongNumber (strong) where

strong :: Integer -> String
strong i
  | calcFactSum i == i = "STRONG!!!!"
  | otherwise = "Not Strong !!"

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1 .. n]

calcFactSum :: Integer -> Integer
calcFactSum t = for $ digits t
  where
    for [] = 0
    for (x : xs) = factorial x + for xs

digits :: Integral x => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]

-- strong n
--   | n == (sum $ map (\d -> product [1..digitToInt d]) $ show n) = "STRONG!!!!"
--   | otherwise = "Not Strong !!"
