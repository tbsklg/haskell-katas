module Kyu7.Kata5 (longest) where

longest :: [String] -> Int
longest = maximum . map length
