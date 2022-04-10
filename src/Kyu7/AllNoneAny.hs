module Kyu7.AllNoneAny where

import Prelude hiding (all, any)

all, none, any :: (a -> Bool) -> [a] -> Bool
all f [] = True
all f (x:xs)
    | f x = all f xs
    | otherwise = False
none f [] = True
none f (x:xs)
    | f x = False
    | otherwise = none f xs
any f [] = False
any f (x:xs)
    | f x = True
    | otherwise = any f xs
    

