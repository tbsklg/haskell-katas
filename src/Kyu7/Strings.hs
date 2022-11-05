module Kyu7.Strings where

import Data.Char (toLower)

doubleCheck :: [Char] -> Bool
doubleCheck str = foldl (\y (c, n) -> y || c == n) False . zip (tail lst) $ lst
  where
    lst = map toLower str
