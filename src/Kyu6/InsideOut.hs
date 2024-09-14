module Kyu6.InsideOut where

insideOut :: String -> String
insideOut xs = unwords $ map turnWord $ words xs

turnWord :: String -> String
turnWord xs
  | even l = reverse (take m xs) ++ reverse (drop m xs)
  | otherwise = reverse (take m xs) ++ [xs !! m] ++ reverse (drop (m + 1) xs)
  where
    l = length xs
    m = l `div` 2
