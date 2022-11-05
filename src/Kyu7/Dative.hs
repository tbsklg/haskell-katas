module Kyu7.Dative where

dative :: String -> String
dative word = dative' . reverse $ word
  where
    dative' [] = ""
    dative' (x : xs)
      | x `elem` front = word ++ "nek"
      | x `elem` back = word ++ "nak"
      | otherwise = dative' xs

front :: [Char]
front = "eéiíöőüű"

back :: [Char]
back = "aáoóuú"
