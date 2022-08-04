module Kyu7.Powofdigits where

eqSumPowDig :: Int -> Int -> [Int]
eqSumPowDig hmax po = [x | x <- [2 .. hmax], (==) x . sum . powerOfn po . digits $ x]

powerOfn :: (Integral b1, Num b2) => b1 -> [b2] -> [b2]
powerOfn n = map (^ n)

digits :: Integral a => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
