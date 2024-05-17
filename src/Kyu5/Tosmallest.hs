module Kyu5.Tosmallest where

import Data.Char (digitToInt)
import Data.List (minimumBy, nub)

smallest :: Integer -> (Integer, Int, Int)
smallest n = (asInteger ys, i, j)
  where
    (ys, i, j) = findSmallest . digits $ n

findSmallest :: [Integer] -> ([Integer], Int, Int)
findSmallest [] = ([], 0, 0)
findSmallest ys
  | unique ys = (ys, 0, 0)
  | otherwise = find . zip [0 ..] $ ys
  where
    find :: [(Int, Integer)] -> ([Integer], Int, Int)
    find [] = (ys, 0, 0)
    find ((i, x) : xs) = case map fst . filter (\(_, z) -> z <= x) $ xs of
      [] -> find xs
      ps ->
        minimumBy (\y z -> compare (fst' y) (fst' z))
          . concatMap
            ( \j ->
                [ (swap ys (i, j), i, j),
                  (swap ys (j, i), j, i)
                ]
            )
          $ ps

unique :: (Ord a) => [a] -> Bool
unique = (== 1) . length . nub

fst' :: (a, b, c) -> a
fst' (x, _, _) = x

minimumMay :: (Ord a) => [a] -> Maybe a
minimumMay [] = Nothing
minimumMay xs = Just . minimum $ xs

swap :: (Ord a) => [a] -> (Int, Int) -> [a]
swap [] _ = []
swap xs (from, to) = insert to (xs !! from) . remove from $ xs

insert :: (Ord a) => Int -> a -> [a] -> [a]
insert n y (x : xs) = take n (x : xs) ++ [y] ++ drop n (x : xs)

remove :: Int -> [a] -> [a]
remove _ [] = []
remove 0 (x : xs) = xs
remove n (x : xs) = x : remove (n - 1) xs

asInteger :: [Integer] -> Integer
asInteger = read . concatMap show

digits :: Integer -> [Integer]
digits = map (toInteger . digitToInt) . show
