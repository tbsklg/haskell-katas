module Kyu7.Div where

data Val c i = C c | I i deriving (Show)

divCon :: [Val Char Int] -> Int
divCon = sum . map asNum

asNum :: Val Char Int -> Int
asNum (C c) = - read [c] :: Int
asNum (I i) = i
