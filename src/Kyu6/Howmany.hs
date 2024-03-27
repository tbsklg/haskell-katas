module Kyu6.Howmany where

import Data.Char (digitToInt)
import Data.List (nub, sort)
import Text.Printf (printf)
import Data.Either (isRight)

newtype MkNumber = MkNumber Int
  deriving (Show)

selNumber :: Int -> Int -> Int
selNumber n d = length . filter isRight . map (`mknumber` d) $ numbers
  where
    numbers :: [Int]
    numbers = [1..n]

mknumber :: Int -> Int -> Either String MkNumber
mknumber n d = case validate $ digits n of
  Right xs -> Right . MkNumber . read . show $ xs
  Left err -> Left err
 where
  validate ds =
    atLeastTwo ds
      >>= inAscendingOrder
      >>= unique
      >>= gapBetweenIsAtMost d

digits :: Int -> [Int]
digits = map digitToInt . show

atLeastTwo :: [Int] -> Either String [Int]
atLeastTwo xs
  | length xs > 1 = Right xs
  | otherwise = Left "The number should have 2 digits at least"

inAscendingOrder :: [Int] -> Either String [Int]
inAscendingOrder xs
  | sort xs == xs = Right xs
  | otherwise = Left "The number should have its digits in increasing order"

unique :: [Int] -> Either String [Int]
unique xs
  | nub xs == xs = Right xs
  | otherwise = Left "The number should have unique digits"

gapBetweenIsAtMost :: Int -> [Int] -> Either String [Int]
gapBetweenIsAtMost g [] = Right []
gapBetweenIsAtMost g [_] = Right []
gapBetweenIsAtMost g (x : y : xs)
  | abs (y - x) <= g = (x :) <$> gapBetweenIsAtMost g (y : xs)
  | otherwise = Left . printf "The gap between digits %d and %d exceeds %d" x y $ g
