module Kyu6.RowTriangle where

oddRow :: Integer -> [Integer]
oddRow n =
  let start = n * n - (n - 1)
   in take (fromInteger n) [start, start + 2 ..]
