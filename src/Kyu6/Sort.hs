module Kyu6.Sort where

import Data.Char (toLower)
import Data.List (sortOn)

sortme :: [String] -> [String]
sortme = map fst . sortOn snd . map (\x -> (x, map toLower x))
