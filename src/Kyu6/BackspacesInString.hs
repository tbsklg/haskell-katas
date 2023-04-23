module Kyu6.BackspacesInString where

cleanString :: String -> String
cleanString = foldl f []
 where
  f [] '#' = []
  f acc '#' = init acc
  f acc x = acc ++ [x]
