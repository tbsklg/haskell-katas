module Kyu7.Remove3 where

remove :: String -> String
remove = unwords . map (reverse . dropWhile (== '!') . reverse) . words

-- remove = unwords . fmap (dropWhileEnd (== '!')) . words
