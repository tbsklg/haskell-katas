module Kyu7.RedKnight (redKnight) where

redKnight :: Int -> Int -> (String,Int)
redKnight i h = (if even (h - i) then "White" else "Black", h * 2)
