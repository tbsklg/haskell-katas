module Kyu7.PartList where

partlist :: [String] -> [(String, String)]
partlist [] = []
partlist l = parts 1
  where
    parts index
        | index < length l = asString (splitAt index l) : parts (index + 1)
        | otherwise = []

asString :: ([String], [String]) -> (String, String)
asString (k, v) = (unwords k, unwords v)
