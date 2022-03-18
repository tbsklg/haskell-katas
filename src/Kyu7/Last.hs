module Kyu7.Last where

import Prelude hiding (last)

last :: [a] -> a
last xs = xs !! (length xs - 1)
