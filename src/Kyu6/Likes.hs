module Kyu6.Likes where

import Text.Printf (printf)

likes :: [String] -> String
likes [] = "no one likes this"
likes [x] = printf "%s likes this" x
likes [x, y] = printf "%s and %s like this" x y
likes [x, y, z] = printf "%s, %s and %s like this" x y z
likes (x : y : ys) = printf "%s, %s and %d others like this" x y (length ys)
