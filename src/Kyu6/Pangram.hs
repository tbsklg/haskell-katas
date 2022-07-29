module Kyu6.Pangram where

import Data.List ((\\))
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram str = null (['a' .. 'z'] \\ map toLower str)
