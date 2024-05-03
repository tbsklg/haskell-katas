module Kyu6.AlternateSplit where

import Data.List (sortOn)

encrypt :: String -> Int -> String
encrypt xs n | n <= 0 = xs
encrypt xs n = encrypt (odds ++ evens) (n - 1)
  where
    odds = map snd . filter (\(i, x) -> odd i) . zip [0 ..] $ xs
    evens = map snd . filter (\(i, x) -> even i) . zip [0 ..] $ xs

decrypt :: String -> Int -> String
decrypt xs n | n <= 0 = xs
decrypt xs n = decrypt decrypted (n - 1)
  where
    numberOfOdds = length xs `div` 2
    numberOfEvens = length xs - numberOfOdds

    oddsWithIndices = zip [1, 3 ..] $ take numberOfOdds xs
    evensWithIndices = zip [0, 2 ..] $ take numberOfEvens . drop numberOfOdds $ xs

    decrypted = map snd . sortOn fst $ (oddsWithIndices ++ evensWithIndices)

-- import Data.List (partition, transpose)

-- encrypt :: String -> Int -> String
-- encrypt s n
--   | n > 0 = iterate go s !! n
--   | otherwise = s
--   where
--     go = map snd . uncurry (++) . partition (odd . fst) . zip [0..]

-- decrypt :: String -> Int -> String
-- decrypt s n
--   | n > 0 = iterate go s !! n
--   | otherwise = s
--   where
--     l = length s
--     go s = concat $ transpose $ [drop (l `div` 2) s, take (l `div` 2) s]
