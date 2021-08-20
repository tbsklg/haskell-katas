module Kyu7.ColouredTriangle where

triangle :: String -> String
triangle [x] = [x]
triangle l = triangle (colors l)

colors :: [Char] -> [Char]
colors [x, y] = [color x y]
colors (x : y : ys) = color x y : colors (y : ys)

color :: Char -> Char -> Char
color 'R' 'G' = 'B'
color 'R' 'B' = 'G'
color 'G' 'R' = 'B'
color 'G' 'B' = 'R'
color 'B' 'R' = 'G'
color 'B' 'G' = 'R'
color a b
  | a == b = a
  | otherwise = error "color not defined"
