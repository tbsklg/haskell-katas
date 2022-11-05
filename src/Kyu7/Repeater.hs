module Kyu7.Repeater where

import Data.List (replicate)

repeater :: String -> Int -> String
repeater string n = concat $ replicate n string
