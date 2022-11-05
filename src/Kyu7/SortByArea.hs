module Kyu7.SortByArea (sortByArea, Shape (..)) where

import Data.List (sortBy)

data Shape = Rectangle {width, length :: Double} | Circle {radius :: Double} deriving (Show, Eq)

sortByArea :: [Shape] -> [Shape]
sortByArea [] = []
sortByArea (x : xs) = sortBy area (x : xs)

area :: Shape -> Shape -> Ordering
area Rectangle {Kyu7.SortByArea.length = l, width = w} Circle {radius = r} = compare (l * w) (r ^ 2 * pi)
area Rectangle {Kyu7.SortByArea.length = l, width = w} Rectangle {Kyu7.SortByArea.length = l', width = w'} = compare (l * w) (l' * w')
area Circle {radius = r} Rectangle {Kyu7.SortByArea.length = l, width = w} = compare (r ^ 2 * pi) (l * w)
area Circle {radius = r} Circle {radius = r'} = compare (r ^ 2 * pi) (r' ^ 2 * pi)

-- area (Rectangle w h) = w * h
-- area (Circle r) = pi * r**2

-- sortByArea :: [Shape] -> [Shape]
-- sortByArea = sortOn area
