module Kyu7.CommonSubs where

import Data.List (isInfixOf)
import Data.Char (toLower)

substringTest :: [Char] -> [Char] -> Bool
substringTest [] [] = False
substringTest [x] _ = False
substringTest _ [x] = False
substringTest s1 s2 = substringTest' (map toLower s1) (map toLower s2)
  where
    substringTest' (x:y:xs) s2 = [x,y] `isInfixOf` s2 || substringTest (y:xs) s2
