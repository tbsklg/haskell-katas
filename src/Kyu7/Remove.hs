module Kyu7.Remove where

remove :: String -> String
remove s = sentence ++ excl
  where
    sentence = filter (/= '!') s
    excl = filter (== '!') s
