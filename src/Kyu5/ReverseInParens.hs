module Kyu5.ReverseInParens (reverseInParens) where

reverseInParens :: String -> String
reverseInParens [] = []
reverseInParens xs
  | '(' `elem` xs = l ++ "(" ++ parens m ++ ")" ++ r
  | otherwise = xs
  where
    l = takeWhile (/= '(') xs
    r = reverse . takeWhile (/= ')') . reverse $ xs
    m = reverse . saveTail . dropWhile (/= ')') . reverse . saveTail . dropWhile (/= '(') $ xs

parens :: String -> String
parens [] = []
parens w
  | '(' `elem` w = reverseInParens . map flipParen . reverse $ w
  | otherwise = reverse w

flipParen :: Char -> Char
flipParen ')' = '('
flipParen '(' = ')'
flipParen x = x

saveTail :: [a] -> [a]
saveTail [] = []
saveTail xs = tail xs
