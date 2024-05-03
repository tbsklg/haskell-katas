module Kyu6.Delete where

deleteDigit :: Int -> Int
deleteDigit = maximum . map number . deletions . digits

deletions :: [Int] -> [[Int]]
deletions xs = map (deleteAt xs) [0 .. length xs - 1]
  where
    deleteAt xs n = take n xs ++ drop (n + 1) xs

digits :: Int -> [Int]
digits = map (\x -> read [x] :: Int) . show

number :: [Int] -> Int
number = read . concatMap show
