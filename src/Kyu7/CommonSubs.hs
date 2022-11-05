module Kyu7.CommonSubs where

import Data.Char (toLower)
import Data.List (isInfixOf)

substringTest :: [Char] -> [Char] -> Bool
substringTest [] [] = False
substringTest [x] _ = False
substringTest _ [x] = False
substringTest s1 s2 = substringTest' (map toLower s1) (map toLower s2)
  where
    substringTest' (x : y : xs) s2 = [x, y] `isInfixOf` s2 || substringTest (y : xs) s2
