module Kyu5.Rot13 where

import Data.Char

rot13 :: String -> String
rot13 = map shift13

shift13 :: Char -> Char
shift13 = shift 13

shift :: Int -> Char -> Char
shift size x
  | isAsciiUpper x = chr . (+) (ord 'A') . mod (ord x - ord 'A' + size) $ 26
  | isAsciiLower x = chr . (+) (ord 'a') . mod (ord x - ord 'a' + size) $ 26
  | otherwise = x
