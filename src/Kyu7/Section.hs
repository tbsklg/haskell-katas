module Kyu7.Section (section) where

section :: Int -> [Int] -> Maybe Int
section i s = case takeWhile (\x -> i > (x - 1)) $ scanl1 (+) s of
  [] -> Just 0
  l -> if length l == length s then Nothing else Just $ length l

-- section scrollY = findIndex (scrollY <) . scanl1 (+)
