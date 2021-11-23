module Kyu7.StatusArrays (status) where

import Data.List (sortBy, sort)
import Data.Function (on)

status :: [Int] -> [Int]
status = map (\(x, y) -> snd y) . sortBy compareStatus . map status' . appearances . zip [0..]

status' :: Num a => (a, (a, b)) -> (a, (a, b))
status' (x, y) = (position + elementsBefore + 1, y)
    where
        position = fst y
        elementsBefore = x

appearances :: Ord a1 => [(a2, a1)] -> [(Int, (a2, a1))]
appearances [] = []
appearances l = elements l l
    where
        elements [] _ = []
        elements (x:xs) l = (length . filter (\z -> snd z < snd x) $ l, x) : elements xs l

compareStatus :: (Ord a1, Ord a2) => (a2, (a1, b1)) -> (a2, (a1, b2)) -> Ordering
compareStatus (a1, b1) (a2, b2)
    | a1 == a2 && fst b1 < fst b2 = LT
    | a1 < a2 = LT
    | otherwise = GT

-- status nums = map snd . sortOn (\(i, x) -> i + length (filter (< x) nums)) . zip [0..] $ nums
