module Kyu7.Find where

data Val = F (Int -> Bool) | I Int

instance Show Val where
  show (F a) = "F" ++ "(Int -> Bool)"
  show (I a) = "I " ++ show a

findFunction :: [Val] -> [Int] -> [Int]
findFunction [] _ = []
findFunction (F f : fs) xs = filter f xs
findFunction (_ : fs) xs = findFunction fs xs
