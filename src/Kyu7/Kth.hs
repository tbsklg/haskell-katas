module Kyu7.Kth where

import Prelude hiding ((!!))

elementAt :: [a] -> Int -> a
elementAt xs a = head . drop (a - 1) $ xs
