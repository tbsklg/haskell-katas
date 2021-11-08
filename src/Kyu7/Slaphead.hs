module Kyu7.Slaphead where

bald :: String -> (String, String)
bald s = (shaved, style . length $ hairs)
  where
    hairs = filter (== '/') s
    shaved = map (const '-') s

style :: (Eq a, Num a) => a -> [Char]
style 0 = "Clean!"
style 1 = "Unicorn!"
style 2 = "Homer!"
style 3 = "Careless!"
style 4 = "Careless!"
style 5 = "Careless!"
style _ = "Hobo!"
