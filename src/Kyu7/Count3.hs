module Kyu7.Count3 where

countNumber :: Integer -> Integer -> Integer
countNumber x y =
  fromIntegral
    . length
    . filter (\x' -> y `mod` x' == 0)
    . filter (\x' -> x' * x >= y)
    $ [1 .. x]
