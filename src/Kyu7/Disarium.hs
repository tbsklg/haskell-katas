module Kyu7.Disarium where

disariumNumber :: Int -> String
disariumNumber n
  | calculate == n = "Disarium !!"
  | otherwise = "Not !!"
  where
    calculate = sum $ zipWith (^) (digits n) [1 ..]

digits :: Integral x => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
