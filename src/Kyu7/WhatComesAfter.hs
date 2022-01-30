module Kyu7.WhatComesAfter (comesAfter) where

import Data.Char (isAlpha, toLower)

comesAfter :: String -> Char -> String
comesAfter s c = concatMap (`nextChar` c) . words $ s

nextChar :: String -> Char -> String
nextChar [] _ = ""
nextChar [x] _ = ""
nextChar (x : y : xs) c
  | match x c && isAlpha y = y : nextChar (y : xs) c
  | otherwise = nextChar (y : xs) c

match :: Char -> Char -> Bool
match a b = toLower a == toLower b
