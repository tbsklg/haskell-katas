module Kyu7.Capitalize where

import Data.Char

capitalize :: [Char] -> [[Char]]
capitalize xs = evenUp : [oddUp]
  where
    evenUp = zipWith (\x y -> (if even x then toUpper y else y)) [0 ..] xs
    oddUp = zipWith (\x y -> (if odd x then toUpper y else y)) [0 ..] xs
