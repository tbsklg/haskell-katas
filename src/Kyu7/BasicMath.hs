module Kyu7.BasicMath (calc) where

import Data.List (intercalate)
import Data.List.Split (splitOn)

calc :: String -> String
calc l = show $ foldl (\x y -> x + asInt y) 0 (words $ unwords $ splitOn "plus" $ intercalate " -" $ splitOn "minus" l)

asInt :: [Char] -> Int
asInt x
  | head x == '-' = (read (tail x) :: Int) * (-1)
  | otherwise = read x :: Int

-- See interpreter example: https://www.codewars.com/kata/reviews/5da08566e6cc2d0001bb7709/groups/5da08567e6cc2d0001bb770d