module Kyu7.RakeGarden (rakeGarden) where

rakeGarden :: String -> String
rakeGarden = unwords . map rake . words

rake :: [Char] -> [Char]
rake "rock" = "rock"
rake _ = "gravel"
