module Kyu7.PrinterErrors where

printerError :: [Char] -> [Char]
printerError s = show failures ++ ['/'] ++ show (length s)
  where
    failures = length (filter (\x -> x `notElem` ['a' .. 'm']) s)
