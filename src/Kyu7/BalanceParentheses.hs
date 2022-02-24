module Kyu7.BalanceParentheses (fixParens) where

import Data.List (isPrefixOf, findIndex, tails)

fixParens :: String -> String
fixParens s = replicate lefts '(' ++ s ++ replicate rights ')'
  where
    lefts = length . filter (== ')') . removeValids $ s
    rights = length . filter (== '(') . removeValids $ s

removeValids :: String -> String
removeValids s = case findIndex (isPrefixOf "()") (tails s) of
    Just _ -> removeValids . remove $ s
    _ -> s

remove :: String -> String
remove "" = ""
remove s@(c : cs)
  | "()" `isPrefixOf` s = remove (drop 2 s)
  | otherwise = c : remove cs