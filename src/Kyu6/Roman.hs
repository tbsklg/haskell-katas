module Kyu6.Roman where

solution :: String -> Int
solution [] = 0
solution (x : xs) = case x of
  'M' -> 1000 + solution xs
  'D' -> 500 + solution xs
  'C' -> case xs of
    'M' : xs' -> 900 + solution xs'
    'D' : xs' -> 400 + solution xs'
    _ -> 100 + solution xs
  'L' -> 50 + solution xs
  'X' -> case xs of
    'C' : xs' -> 90 + solution xs'
    'L' : xs' -> 40 + solution xs'
    _ -> 10 + solution xs
  'V' -> 5 + solution xs
  'I' -> case xs of
    'X' : xs' -> 9 + solution xs'
    'V' : xs' -> 4 + solution xs'
    _ -> 1 + solution xs
  _ -> 0
