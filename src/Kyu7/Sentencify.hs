module Kyu7.Sentencify (sentencify) where

import Data.Char (toUpper)

sentencify :: [String] -> String
sentencify xs = [toUpper . head $ sentence] ++ tail sentence ++ ['.']
  where
    sentence = unwords xs
