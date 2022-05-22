module Kyu7.Switcher where

letters :: [Char]
letters = "zyxwvutsrqponmlkjihgfedcba!? "

switcher :: [String] -> String
switcher = map ((\x -> letters !! (x - 1)) . read)
