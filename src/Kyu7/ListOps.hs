module Kyu7.ListOps where

import Prelude hiding (head, init, last, tail)

head :: [a] -> a
head a = a !! 0

last :: [a] -> a
last a = a !! (length a - 1)

init :: [a] -> [a]
init = reverse . drop 1 . reverse

tail :: [a] -> [a]
tail = drop 1
