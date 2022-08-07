module Kyu7.ThueMorse where

isThueMorse :: [Int] -> Bool
isThueMorse l = (==) l . take (length l) $ morse

morse :: [Int]
morse = 0 : go [1]
    where
        go xs = xs ++ go (xs ++ map (\x -> abs (x - 1)) xs)

-- isThueMorse = (`isPrefixOf` map ((`mod` 2) . popCount) [0 :: Int ..])