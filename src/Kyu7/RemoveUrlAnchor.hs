module Kyu7.RemoveUrlAnchor where

removeUrlAnchor :: String -> String
removeUrlAnchor = takeWhile (/='#')
