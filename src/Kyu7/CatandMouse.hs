module Kyu7.CatandMouse where

catMouse :: String -> String
catMouse s = if (<= 3) . length . filter (== '.') $ s then "Caught!" else "Escaped!"
