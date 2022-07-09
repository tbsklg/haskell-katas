module Kyu6.DigitalRoot where

digitalRoot :: Integral a => a -> a
digitalRoot a
    | a < 10 = a
    | otherwise = digitalRoot . sum . digits $ a 

digits :: Integral a => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
