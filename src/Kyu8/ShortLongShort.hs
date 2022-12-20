module Kyu8.ShortLongShort where

shortLongShort :: String -> String -> String
shortLongShort a b
  | length a < length b = a ++ b ++ a
  | otherwise = b ++ a ++ b
