module Kyu7.Centre where

import Data.List.Split (splitOn)

isInMiddle :: String -> Bool
isInMiddle [] = False
isInMiddle [x] = False
isInMiddle "abc" = True
isInMiddle (x : "abc") = True
isInMiddle ['a', 'b', 'c', x] = True
isInMiddle xs = isInMiddle . tail . init $ xs
