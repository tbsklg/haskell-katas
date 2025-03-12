module Kyu6.Sumdignth where

sumDigNthTerm :: Int -> [Int] -> Int -> Int
sumDigNthTerm initval [] _ = initval
sumDigNthTerm initval patternl nthterm =
  let go x _ 1 = x
      go x (y : ys) n = go (x + y) ys (n - 1)
   in sum . digits $ go initval (cycle patternl) nthterm

digits :: Int -> [Int]
digits 0 = []
digits x = x `mod` 10 : digits (x `div` 10)
