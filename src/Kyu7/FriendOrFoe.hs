module Kyu7.FriendOrFoe where

friend :: [String] -> [[Char]]
friend = filter (\x -> length x == 4)
