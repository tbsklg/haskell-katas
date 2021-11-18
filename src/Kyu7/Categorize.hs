module Kyu7.Categorize where

data Membership = Open | Senior deriving (Eq, Show)

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior [] = []
openOrSenior ((x,y):xs)
    | x >= 55 && y > 7 = Senior : openOrSenior xs
    | otherwise = Open : openOrSenior xs
