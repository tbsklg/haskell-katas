module Kyu5.LandPerimeter (landPerimeter) where

import Data.Maybe (fromMaybe)
import Text.Printf (printf)

type Field = (Int, Int)

type Area = [String]

land = 'X'

landPerimeter :: Area -> String
landPerimeter = printResult . perimeter . landFields

printResult :: Int -> String
printResult = printf "Total land perimeter: %d"

perimeter :: [Field] -> Int
perimeter points = foldr (\p acc -> (4 - neighbours p points) + acc) 0 points

neighbours :: Field -> [Field] -> Int
neighbours (x, y) =
  length
    . filter
      (\(x', y') -> x == x' && abs (y - y') == 1 || y == y' && abs (x - x') == 1)

landFields :: Area -> [Field]
landFields xs = fields xs land

fields :: Area -> Char -> [Field]
fields [] _ = []
fields xs f =
  [ (x, y)
    | x <- [0 .. length (fromMaybe [] (headMay xs)) - 1],
      y <- [0 .. length xs - 1],
      xs !! y !! x == f
  ]

headMay :: [a] -> Maybe a
headMay [] = Nothing
headMay (x : _) = Just x
