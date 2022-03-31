module Kyu7.Pak where

import Data.List (intercalate)

pak :: String -> String
pak = intercalate " pak " . words
