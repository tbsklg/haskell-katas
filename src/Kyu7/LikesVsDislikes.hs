module Kyu7.LikesVsDislikes (likeOrDislike, Like (..)) where

data Like = Like | Dislike deriving (Show, Eq)

likeOrDislike :: [Like] -> Maybe Like
likeOrDislike [] = Nothing
likeOrDislike [x] = Just x
likeOrDislike (Like : Like : xs) = likeOrDislike xs
likeOrDislike (Dislike : Dislike : xs) = likeOrDislike xs
likeOrDislike (x : y : xs) = likeOrDislike (y : xs)
