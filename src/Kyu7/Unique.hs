module Kyu7.Unique where

import Data.List (nub)

hasUniqueChar :: String -> Bool
hasUniqueChar str = (==) (length str) . length . nub $ str

-- hasUniqueChar str = nub str == str
