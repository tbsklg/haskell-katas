module Kyu6.A9n where

import Data.Char (isAlpha)
import Data.List.Split (splitOn)

abbreviate :: String -> String
abbreviate = unwords . map abbreviateWord . words'
  where
    words' = splitOn " "

    abbreviateWord [] = []
    abbreviateWord word@(x : xs)
      | isAlpha x = (abbreviate' . takeWhile isAlpha $ word) ++ (abbreviateWord . dropWhile isAlpha $ word)
      | otherwise = x : abbreviateWord xs

    abbreviate' xs | length xs < 4 = xs
    abbreviate' (x : xs) = [x] ++ show (length xs - 1) ++ [last xs]
