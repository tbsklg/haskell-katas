module Kyu6.Pangram where

import Data.Char (toLower)
import Data.List ((\\))

isPangram :: String -> Bool
isPangram str = null (['a' .. 'z'] \\ map toLower str)
