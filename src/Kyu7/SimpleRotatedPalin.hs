module Kyu7.SimpleRotatedPalin where

solve :: String -> Bool
solve x = go 0 (cycle x)
  where
    go n xs
      | n == length x = False
      | otherwise = isPalindrom (take (length x) xs) || go (n + 1) (tail xs)

isPalindrom :: Eq a => [a] -> Bool
isPalindrom x = (==) x . reverse $ x
