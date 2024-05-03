module Kyu7.SingleCharPalins where

solve :: String -> Bool
solve xs
  | isPalindrom xs && (even . length $ xs) = False
  | isPalindrom xs && (odd . length $ xs) = True
  | otherwise = (==) 2 . length . filter (uncurry (/=)) . zip xs $ reverse xs

isPalindrom :: (Eq a) => [a] -> Bool
isPalindrom xs = xs == reverse xs
