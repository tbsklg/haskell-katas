module Kyu7.Alternating (f) where

f :: (Eq a) => [a] -> a -> a
f xs n = head . tail . dropWhile (/= n) . cycle $ xs
