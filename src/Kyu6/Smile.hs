module Kyu6.Smile where

countSmileys :: [String] -> Int
countSmileys = length . filter (`elem` smileys)

smileys :: [[Char]]
smileys = [":D", ";D", ":~)", ";~)", ":-D", ";-D", ":~D", ";~D", ":-)", ";-)", ":)", ";)"]
