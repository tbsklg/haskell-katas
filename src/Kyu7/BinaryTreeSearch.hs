module Kyu7.BinaryTreeSearch where

data Tree a = Nil | Node (Tree a) a (Tree a) deriving (Show)

search :: Int -> (Tree Int) -> Bool
search _ Nil = False
search k (Node l k' r)
    | k == k' = True
    | otherwise = search k l || search k r
