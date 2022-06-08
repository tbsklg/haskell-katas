module Kyu7.ReverseSlice (reverseSlice) where

import Data.List (tails)

reverseSlice :: String -> [String]
reverseSlice = init . tails . reverse
