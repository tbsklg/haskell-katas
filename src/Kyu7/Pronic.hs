module Kyu7.Pronic where

isPronic :: Integer -> Bool
isPronic k = (==) k . head . dropWhile (< k) $ pronicNumbers

pronicNumbers :: [Integer]
pronicNumbers = zipWith (*) [0 ..] [1 ..]
