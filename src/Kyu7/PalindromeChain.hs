module Kyu7.PalindromeChain where

palindromeChainLength :: Integer -> Integer
palindromeChainLength a = steps a 0
  where
    steps i c
      | isPalindrom = c
      | otherwise = steps next (c + 1)
      where
        isPalindrom = digits i == reverse (digits i)
        next = asInteger (digits i) + asInteger (reverse (digits i))

asInteger :: [Integer] -> Integer
asInteger = foldl addDigit 0
  where
    addDigit num d = 10 * num + d

digits :: Integer -> [Integer]
digits 0 = []
digits i = digits (i `div` 10) ++ [i `mod` 10]
