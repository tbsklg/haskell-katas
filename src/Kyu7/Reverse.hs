module Kyu7.Reverse where

import Prelude hiding (reverse)

reverse :: [a] -> [a]
reverse [] = []
reverse (x : xs) = reverse xs ++ [x]

-- reverse = foldl (flip (:)) []
