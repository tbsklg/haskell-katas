module Kyu7.NotAboveTheOne (binaryCleaner) where

binaryCleaner :: [Int] -> ([Int], [Int])
binaryCleaner xs = (bin, ig1)
  where
    bin = map snd . filter (\(_, x) -> x == 0 || x == 1) $ indexed
    ig1 = map fst . filter (\(_, x) -> x > 1) $ indexed
    indexed = zip [0 ..] xs
