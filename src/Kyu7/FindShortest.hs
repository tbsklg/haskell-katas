module Kyu7.FindShortest where

find_shortest :: String -> Integer
find_shortest w = minimum $ map (fromIntegral . length) $ words w
