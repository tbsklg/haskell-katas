module Kyu7.Office where

broken :: String -> String
broken = map (\x -> if x == '1' then '0' else '1')
