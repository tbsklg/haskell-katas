module Kyu7.SmallestPerfectPowerHigherThatAGivenValue where

findNextPower :: Integer -> Integer -> Integer
findNextPower x e = (^ e) . floor . (+1) . nroot (fromIntegral e) $ fromIntegral x

nroot :: (Integral a, Floating b) => a -> b -> b 
n `nroot` x = x ** (1 / fromIntegral n)
