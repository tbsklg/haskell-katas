module Switcheroo where

switcheroo :: String -> String
switcheroo = map switch

switch :: Char -> Char
switch x
  | x == 'a' = 'b'
  | x == 'b' = 'a'
  | otherwise = x
