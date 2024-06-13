module Kyu7.LettersBestFriend (bestFriend) where

import Data.Char (isAlpha)
import Data.Maybe (fromMaybe)

bestFriend :: String -> Char -> Char -> Bool
bestFriend xs f s =
  all (\(_, y) -> y == s)
    . filter (\(x, _) -> x == f)
    . zip xs
    $ tail (xs ++ ['0'])
