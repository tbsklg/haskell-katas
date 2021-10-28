module Kyu7.Remove2 where

remove :: String -> String
remove s = text ++ lastExcls
  where
    text = filter (/= '!') s
    lastExcls = takeWhile (== '!') . reverse $ s
