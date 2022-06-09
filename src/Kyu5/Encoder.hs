module Kyu5.Encoder where

import Data.List (intercalate)
import Text.Printf (printf)

data Sequence = Sequence {number :: Int, count :: Int} deriving (Show)

data Consecutive = Consecutive {cFirst :: Int, cLast :: Int}

data Interval = Interval {iFirst :: Int, iLast :: Int, iInterval :: Int}

compress :: [Int] -> String
compress = intercalate "," . encode

encode :: [Int] -> [String]
encode [] = []
encode [x] = [show x]
encode [x, y]
  | x == y = [printSequence s]
  | otherwise = [show x, show y]
  where
    s = Sequence {number = x, count = 2}
encode l@(x : y : z : xs)
  | x == y = printSequence s : encode sNext
  | abs (x - z) == 2 = printConsecutives c : encode cNext
  | x - y == y - z = printInterval i : encode cNext
  | otherwise = show x : encode (tail l)
  where
    (sequence, sNext) = span (== x) l
    (consecutives, cNext) = interval l

    c = Consecutive {cFirst = head consecutives, cLast = last consecutives}
    i = Interval {iFirst = head consecutives, iLast = last consecutives, iInterval = abs (x - y)}
    s = Sequence {number = x, count = length sequence}

interval :: (Eq b, Enum b) => [b] -> ([b], [b])
interval l@(x : y : _) = (map fst result, map fst next)
  where
    result = takeWhile (uncurry (==)) . zip l $ [x, y ..]
    next = dropWhile (uncurry (==)) . zip l $ [x, y ..]
interval _ = ([], [])

printSequence :: Sequence -> [Char]
printSequence Sequence {number = n, count = c} = printf "%d*%d" n c

printConsecutives :: Consecutive -> [Char]
printConsecutives Consecutive {cFirst = f, cLast = l} = printf "%d-%d" f l

printInterval :: Interval -> [Char]
printInterval Interval {iFirst = f, iLast = l, iInterval = i} = printf "%d-%d/%d" f l i
