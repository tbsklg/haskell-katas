module Kyu7.Symbols where

transform :: String -> String
transform [] = []
transform l@(x : _) = x : count ++ transform next
  where
    count = if matches == 1 then "" else show matches
    matches = length . filter (== x) $ l
    next = filter (/= x) l
